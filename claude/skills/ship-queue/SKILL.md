---
name: ship-queue
description: Sequentially merge all Ready to Ship PRs — update branch, approve e2e, enable auto-merge, monitor, repeat.
disable-model-invocation: true
---

Sequentially merge all my "Ready to Ship" PRs. This skill processes PRs one at a time in a queue to avoid stale-branch conflicts. It uses GitHub's auto-merge feature rather than merging directly.

## Scope

- **Linear workspace**: Canix (use Linear MCP)
- **GitHub repo**: `entrc/entrc-backend` (use GitHub MCP, fall back to `gh` CLI)
- **CircleCI**: Use CircleCI MCP to approve e2e tests

## Step 1: Build the merge queue

1. Use Linear MCP (`list_issues`) to find all issues assigned to me in the **"Ready to Ship"** status.
2. For each Linear issue, extract the branch name from the issue (the branch name is usually in the issue details or attachments).
3. Use GitHub MCP (`list_pull_requests`) to find the open PR for each branch in `entrc/entrc-backend`.
4. If `$ARGUMENTS` is provided, filter the queue to only include the specified PR numbers (e.g., `/ship-queue 12159 12155`).
5. Present the ordered queue to the user and ask for confirmation before proceeding. The user may reorder, remove, or add PRs.

## Step 2: Process the first PR in the queue

Only process **one PR at a time**. The remaining PRs wait until the current one is fully merged.

### 2a. Update branch with main

- Use GitHub MCP (`update_pull_request_branch`) to merge `main` into the PR branch.
- If there are merge conflicts, **skip this PR**, report the conflict, and move to the next PR in the queue.
- If the branch is already up to date, proceed to the next step.

### 2b. Enable auto-merge

- Enable auto-merge on the PR using `gh pr merge {number} --auto --squash --delete-branch`.
- This tells GitHub to automatically merge the PR once all required checks pass.

### 2c. Wait for CI checks to register

- After updating the branch, CI will be re-triggered. Wait briefly (30s) for checks to register.

### 2d. Approve e2e tests on CircleCI

- Use GitHub MCP (`get_pull_request_status`) to find the CircleCI workflow URL from the `ci/circleci: canix/approve-e2e-tests` status check. The workflow ID is the last path segment of the `targetUrl` (e.g., `https://circleci.com/workflow-run/{workflow-id}`).
- Run the approval script: `python3 /Users/taschetto/.claude/skills/ship-queue/approve_e2e.py {workflow-id}` (uses `$CIRCLECI_TOKEN` from env).
- If the approval fails or the workflow hasn't appeared yet, retry a few times with short waits.

### 2e. Monitor until merged or failed

- Poll the PR status via GitHub MCP (`get_pull_request`) every **60 seconds**.
- Check whether the PR has been **merged** (auto-merge succeeded), is still **open** (checks in progress), or has **failed** (check failures caused auto-merge to not trigger).
- Print a brief progress update each poll cycle showing which checks are still pending.
- **Success**: If the PR state is `MERGED`, proceed to step 2f.
- **Failure**: If all checks are complete but any required check failed, auto-merge will not trigger. Report which checks failed, disable auto-merge (`gh pr merge {number} --disable-auto`), skip this PR, and move to the next.
- **Timeout**: If the PR hasn't merged after **20 minutes**, report the timeout and ask the user whether to continue waiting, skip, or abort.

### 2f. Post-merge: move to next PR

- After a successful merge, **all remaining PRs in the queue are now stale** (behind main).
- Wait **15 seconds** after merge for GitHub to update `main`.
- Go back to step 2a with the next PR in the queue.

## Step 3: Final report

After all PRs are processed (merged, skipped, or failed), print a summary table:

| PR | Title | Result | Notes |
|---|---|---|---|
| [#12345](https://github.com/entrc/entrc-backend/pull/12345) | Fix the thing | Merged | - |
| [#12346](https://github.com/entrc/entrc-backend/pull/12346) | Another fix | Skipped | Merge conflict |
| [#12347](https://github.com/entrc/entrc-backend/pull/12347) | Third fix | Failed | `canix_frontend_linting_check` failed |

## Error handling

- **Merge conflicts**: Skip the PR, report it, continue with the queue.
- **CI timeout**: Ask the user after 20 minutes.
- **CircleCI approval failure**: Retry 3 times with 30s intervals. If still failing, ask the user.
- **GitHub API errors**: Retry once. If still failing, report and ask the user.
- **Unexpected state**: If a PR is already merged, closed, or in draft — skip it silently and note in the final report.
- **Auto-merge disabled externally**: If auto-merge gets disabled by someone else or a branch protection rule, detect this and report it to the user.

## Important: Do NOT modify PRs or Linear tickets

- **Do NOT edit PR titles, descriptions, labels, or any other PR metadata.**
- **Do NOT transition, update, or modify Linear tickets in any way** (no status changes, no comments, no field updates).
- Once a PR is merged and deployed, GitHub and Linear automations handle the proper transition to "Done" automatically.
- This skill's only job is: update branch, enable auto-merge, approve e2e tests, and monitor. Nothing else.

## Tool usage

- **Linear**: Use Linear MCP tools **read-only** (`list_issues`, `list_issue_statuses`, `get_issue`). Never use `save_issue` or any write operation.
- **GitHub**: Use GitHub MCP tools (`get_pull_request`, `get_pull_request_status`, `update_pull_request_branch`, `list_pull_requests`), falling back to `gh` CLI only if MCP is unavailable. Use `gh` CLI for auto-merge commands (`gh pr merge --auto`). Do NOT use `update_issue`, `add_issue_comment`, or any tool that modifies PR content.
- **CircleCI**: Use the `approve_e2e.py` script (in this skill's directory) to approve e2e tests. It reads `$CIRCLECI_TOKEN` from the environment (set in `~/.zshrc.local`).
- Do NOT use WebFetch, WebSearch, or any other workaround.
