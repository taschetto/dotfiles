---
name: standup
description: Generate my standup update since the last report at a given date/time.
disable-model-invocation: true
---

Generate my standup update.

## Step 0 — Verify required MCP tools are available

Use `ToolSearch` to discover and load tools from these three MCP servers: **Linear**, **GitHub**, **Slack**. If any server has zero tools discovered, halt immediately and report which server(s) are missing so the user can fix their MCP configuration.

Do NOT fall back to CLI tools, WebFetch, WebSearch, or any other workaround. The only exception is the `gh` CLI tool as a fallback for GitHub MCP.

## Step 1 — Determine the cutoff date/time

- If `$ARGUMENTS` is provided, use it as the cutoff date/time.
- If `$ARGUMENTS` is empty or not provided, calculate the last working day at 10:00 AM local time:
  - Start from yesterday and walk backwards, skipping weekends (Saturday/Sunday) and US federal holidays.
  - Example: if today is Tuesday but Monday is a US holiday, use Friday 10:00 AM.
  - Example: if today is Monday, use Friday 10:00 AM (unless Friday is a holiday, then use Thursday, etc.).

## Step 2 — Gather data

1. **Find my Linear tickets**: Use the Linear MCP tools to search for issues assigned to me that had any status change (workflow state transition) since the cutoff. Also look for issues I completed, moved to review, started, blocked, etc.

2. **Check my GitHub PRs**: Use the GitHub MCP tools to find my recent PRs and commits since the cutoff:
   - Find PRs authored by me updated since the cutoff in Canix repos (e.g., `entrc/entrc-backend`).
   - Extract ticket IDs (e.g., ENG-123, CNX-456) from branch names and PR titles.
   - For each PR, note its status (open, merged, draft, closed).
   - If the MCP response is too large and gets saved to a file, use the helper script to parse it:
     ```
     python3 ~/.claude/skills/standup/parse_prs.py <saved-file-path> authored
     ```

3. **Check my code reviews**: Use the GitHub MCP tools to find PRs I reviewed since the cutoff:
   - Search for PRs reviewed by me updated since the cutoff.
   - Note which PRs I approved, requested changes on, committed to, or commented on.
   - If the MCP response is too large and gets saved to a file, use the helper script to parse it:
     ```
     python3 ~/.claude/skills/standup/parse_prs.py <saved-file-path> reviewed
     ```

4. **Determine status transitions**: For each ticket found, determine what status transition happened since the cutoff. Common transitions:
   - Moved to In Progress
   - Moved to In Review
   - Moved to Testing/QA
   - Moved to Done
   - Moved to Blocked
   - Newly picked up

5. **Find stale tickets**: Search for all tickets assigned to me that have been sitting in the same status (column) for more than 3 business days. Calculate staleness in business days (exclude weekends and US federal holidays). These are tickets that need attention regardless of whether they changed since the cutoff.

## Step 3 — Send the Slack messages

Send TWO separate Slack DMs to myself (user ID: U081LK77B0W) using the Slack MCP `send_message` tool. Use Slack mrkdwn syntax.

**Message 1 — Status Report.** Group items by category in this order. Show transition groups first, then currently in progress, then code reviews:

```
*Moved to Done*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title>

*Moved to Testing/QA*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title>

*Moved to In Review*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title>

*Moved to In Progress*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title>

*Moved to Blocked*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title>

*Currently In Progress*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title>

*Code Reviews performed by me*
- <PR-URL|repo#number> - <title> (approved/changes requested/commented)
```

**Message 2 — Needs Attention (stale tickets).** List tickets stuck in the same column for more than 3 business days. For each ticket, include a brief note explaining *why* it needs attention — e.g., waiting on code review, blocked by a dependency, waiting on QA from another team, PR has unresolved comments, needs customer confirmation, etc. Use the ticket's Linear description, comments, labels (e.g., "Blocked"), and linked PR status to infer the reason. Format:

```
*Needs Attention*
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title> (5 days stale in In Review) — waiting on code review approval
- <https://linear.app/canix/issue/ENG-XXX|ENG-XXX> - <title> (8 days stale in In Progress) — blocked by missing API spec from partner team
```

Only send Message 2 if there are stale tickets. Skip it entirely otherwise.

Note: Use `- ` (dash + space) for list items — do NOT use unicode bullets (•, ◦). Separate groups with a blank line.

## Rules

- **MCP tools only.** Do NOT use Bash (`gh`, `curl`, etc.), WebFetch, WebSearch, or Notion search. The only exception is the `gh` CLI as a fallback for GitHub MCP. If any other MCP tool call fails, report the error — do not retry with a different tool type.
- Only include Canix-related work. Filter to the Canix team/project in Linear and Canix repos on GitHub. Ignore tickets, PRs, and reviews from other teams or projects.
- Only include tickets with actual status changes since the cutoff.
- "Currently In Progress" includes tickets that are in the In Progress column but did NOT transition since the cutoff (i.e., they were already in progress before). Do not duplicate tickets that appear in the "Moved to In Progress" group.
- If a ticket transitioned through multiple statuses, use the **latest** status.
- Make the ticket ID (e.g., ENG-XXX) a Slack link to the Linear issue: `<https://linear.app/canix/issue/ENG-XXX|ENG-XXX>`. Do NOT append a separate link at the end.
- For code reviews, link to the PR URL and note the review action (approved, changes requested, commented).
- Only include code reviews on other people's PRs — exclude self-reviews.
- Keep descriptions short — just the ticket title, optionally with the client name if present.
- Omit empty groups (don't show a category header if there are no tickets in it).
- Send the message directly via Slack DM using the MCP tool. Also output the message in a code block for reference.
- If you cannot determine the status transition for a ticket, mention it in a separate "Notes" section below the message.
- Ignore merge commits that just merge main/master into a branch (e.g., "Merge branch 'main' into ..."). These are branch update housekeeping, not meaningful work.
- Do not access any other data sources (including MCP servers) other than the ones explicitly listed here (Linear, GitHub, Slack).
