---
name: update-pr-description
description: Update the PR description based on the diff between the PR branch and the main branch.
disable-model-invocation: true
---

Update the PR description based on the diff between the PR branch and the main branch.

## Identifying the PR

- If `$ARGUMENTS` is provided, use it as the PR number (e.g., `/update-pr-description 12195`).
- If `$ARGUMENTS` is empty, find the open PR associated with the current git branch.

## Content guidelines

If the issue/ticket is a bug, add a summary linking to the original ticket, explain the root cause, how the root cause affected and caused the specific issue described in the ticket, explain the fix. Do not exaggerate — find a balance between being detailed and cumbersome. Also add a summary of file changes and whenever possible, create and add a manual testing plan meant for someone who is going to manually QA this.

If the issue is a feature, summarize and describe the feature, relevant implementation details, and create a manual testing plan.

Use the best formatting practices and leverage whatever markdown feature you'd like to make the PR description beautiful and easy to read and follow. AVOID a wall of text that is bad for human reading.

Also, make sure the PR title is following the format: TICKET - TICKET TITLE. Example: if the ticket is ENG-123 and the Linear title is "Hello World", the PR should have `ENG-123 - Hello World` as its title.

Always add a link to the ticket in the summary (e.g., `https://linear.app/canix/issue/ENG-XXX`).

## When to skip

Only skip updating the description if it already covers all of the above (root cause/feature summary, file changes, testing plan, ticket link, correct title format). If any section is missing or incomplete, update it. A description that merely exists is not "good enough" — it must meet all the content guidelines above.

## Tool usage

Use GitHub MCP tools, falling back to the `gh` CLI tool only if MCP is unavailable. Do NOT use WebFetch, WebSearch, or any other workaround. Use Linear MCP tools to fetch ticket details (title, type, description).
