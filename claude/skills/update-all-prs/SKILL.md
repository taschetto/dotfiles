---
name: update-all-prs
description: Check all my opened PRs on Github and update branches that are behind main.
disable-model-invocation: true
---

Check all my opened PRs on Github.
For each PR, check if origin/main is ahead of the PR's branch.
If so, and if there are no conflicts, update the branch.
If origin/main is behind, or if there are conflicts, skip that PR.
Print a summary table at the end showing each PR and what action was taken.
In the summary table, make the PR number a clickable link to the PR on GitHub (e.g., [#12345](https://github.com/{owner}/{repo}/pull/12345)).

Prefer using MCP server for GitHub, falling back to the gh CLI tool.
