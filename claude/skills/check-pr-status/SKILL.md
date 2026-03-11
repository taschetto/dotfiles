---
name: check-pr-status
description: Show CI status, review status, and merge readiness for my open PRs.
disable-model-invocation: true
---

Check the status of my open PRs on GitHub.

## Identifying PRs

- If `$ARGUMENTS` is provided, use it as the PR number(s) to check (e.g., `/check-pr-status 12195` or `/check-pr-status 12195 12162`).
- If `$ARGUMENTS` is empty, find the open PR associated with the current git branch.

## What to check

For each PR, gather:

1. **CI status**: Check all status checks and their results (passing, failing, pending).
2. **Review status**: Who reviewed, who approved, who requested changes, any pending review requests.
3. **Merge readiness**: Is the branch up to date with base? Any merge conflicts? Are all required checks passing? Are all required approvals met?
4. **Open comments**: Any unresolved review threads or comments that need attention.

## Output format

Print a summary table with columns: PR, Title, CI, Reviews, Merge Ready, Notes.

- Make the PR number a clickable link (e.g., [#12345](https://github.com/{owner}/{repo}/pull/12345)).
- CI: use a short status (passing / failing / pending).
- Reviews: show approved count vs required, and note any "changes requested".
- Merge Ready: yes / no with a brief reason if no (e.g., "conflicts", "CI failing", "needs 1 more approval").
- Notes: any unresolved threads count, staleness, or other relevant info.

If checking a single PR, also show the full list of checks with their individual statuses and a list of reviewers with their review state.

## Tool usage

Use GitHub MCP tools, falling back to the `gh` CLI tool only if MCP is unavailable. Do NOT use WebFetch, WebSearch, or any other workaround.
