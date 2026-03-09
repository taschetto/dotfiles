---
name: update-pr-description
description: Update the PR description based on the diff between the PR branch and the main branch.
disable-model-invocation: true
---

Update the PR description based on the diff between the PR branch and the main branch.

If the issue/ticket is a bug, add a summary linking to the original ticket, explain the root cause, how the root cause affected and caused the specific issue described in the ticket, explain the fix. Do not exagerate - find a balance between being detailist and cumbersome. Also add a summary of file changes and whenever possible, create and add a manual testing plan meant for someone who is going to manually QA this.

If the issue is a feature, summary, describe the feature, relevant implementation details, and create a manual testing plan.

Use the best formatting practices and leverage whenever markdown feature you'd like to make the PR description beautiful and easy to read and follow. AVOID a wall a text that is bad for human reading.

Also, make sure the PR title is following the format: TICKET - TICKET TITLE. Example: if the ticket is ENG-123 and the Linear title is "Hello World", the PR should have `ENG-123 - Hello World` as its title.

Prefer using a GitHub MCP integration falling back to the gh CLI tool.
If you judge the current description is good enough, leave it untouched.
Always add a link to the ticket in the summary.
