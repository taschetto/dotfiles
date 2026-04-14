---
name: sync-branches
description: Delete local branches that have been merged or deleted on the remote.
disable-model-invocation: true
---

Clean up local branches whose remote counterparts have been merged or deleted.

## Steps

1. **Fetch and prune**: Run `git fetch --prune` to update remote tracking refs and remove stale ones.

2. **Find branches to delete**: Identify local branches that are safe to remove:
   - Branches whose upstream tracking branch is gone (shown by `git branch -vv` with `[origin/...: gone]`).
   - Exclude the current branch, `main`, `master`, and `develop` — never delete these.

3. **Preview**: Show a table of branches that will be deleted, including:
   - Branch name
   - Last commit date (relative, e.g., "3 weeks ago")
   - Last commit message (truncated)

4. **Confirm**: Ask the user for confirmation before deleting. The user may exclude specific branches.

5. **Delete**: Remove confirmed branches with `git branch -D`.

6. **Summary**: Print how many branches were deleted and how many remain.

## Scope

- If `$ARGUMENTS` contains a path to a repo, `cd` into it first.
- If `$ARGUMENTS` is empty, operate on the current working directory.
- This skill only touches **local** branches. It never force-pushes or deletes remote branches.

## Tool usage

Use `git` CLI commands only. No MCP tools needed.
