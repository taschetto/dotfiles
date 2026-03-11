---
name: reformat-ticket
description: Reformat ticket descriptions using best practices and leveraging Linear and Markdown to make it feel good and easy to read.
disable-model-invocation: true
---

Reformat the ticket description using best practices and leveraging Linear and Markdown to make it feel good and easy to read. DO NOT change the content, just the formatting. Use titles, tables, callouts and whatever you need.

## Identifying the ticket

- If `$ARGUMENTS` is provided, use it as the ticket ID (e.g., `/reformat-ticket ENG-430`).
- If `$ARGUMENTS` is empty, parse the ticket ID from the current git branch name (e.g., branch `guilherme/eng-430-...` → `ENG-430`).

This skill works across any Linear workspace you have access to — no restrictions on team or project.

If you judge the current description is good enough, leave it untouched.

## Tool usage

Use Linear MCP tools only. Do NOT fall back to CLI tools, WebFetch, WebSearch, or any other workaround. If an MCP tool call fails, report the error — do not retry with a different tool type.
