---
name: update-all-prs
description: Check all my opened PRs on Github and update branches that are behind main.
disable-model-invocation: true
---

Check all my opened PRs on Github across all repos I have access to.
For each PR, check if origin/main is ahead of the PR's branch.
If so, and if there are no conflicts, update the branch.
If origin/main is behind, or if there are conflicts, skip that PR.
Print a summary table at the end showing each PR and what action was taken.
In the summary table, make the PR number a clickable link to the PR on GitHub (e.g., [#12345](https://github.com/{owner}/{repo}/pull/12345)).

## Discovering PRs

Use the GitHub MCP tools (or fall back to `gh` CLI) to search for all open PRs authored by me across all repositories. Do not limit to a single repo — check all repos where I have open PRs.

## Tool usage

Use GitHub MCP tools, falling back to the `gh` CLI tool only if MCP is unavailable. Do NOT use WebFetch, WebSearch, or any other workaround.
