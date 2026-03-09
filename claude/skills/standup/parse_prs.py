#!/usr/bin/env python3
"""Parse GitHub PR search results from MCP tool-results JSON files.

Usage:
  python3 parse_prs.py <file> authored    # Extract authored PR summaries
  python3 parse_prs.py <file> reviewed    # Extract reviewed PR summaries (includes author)
"""
import json, sys

def main():
    if len(sys.argv) < 3:
        print("Usage: parse_prs.py <file> authored|reviewed", file=sys.stderr)
        sys.exit(1)

    file_path = sys.argv[1]
    mode = sys.argv[2]

    with open(file_path) as f:
        data = json.load(f)

    text = data[0]["text"] if isinstance(data, list) else data["text"]
    prs = json.loads(text) if isinstance(text, str) else text
    if isinstance(prs, dict) and "items" in prs:
        prs = prs["items"]

    for pr in prs[:20]:
        title = pr.get("title", "")
        number = pr.get("number", "")
        state = pr.get("state", "")
        merged = pr.get("merged_at") or pr.get("pull_request", {}).get("merged_at", "")
        repo = pr.get("repository_url", "").split("/")[-1]
        url = pr.get("html_url", "")
        draft = pr.get("draft", False)
        status = "merged" if merged else ("draft" if draft else state)

        if mode == "reviewed":
            user = pr.get("user", {}).get("login", "")
            print(f"{repo}#{number} | {status} | {user} | {title} | {url}")
        else:
            head = pr.get("head", {}).get("ref", "") if isinstance(pr.get("head"), dict) else ""
            print(f"{repo}#{number} | {status} | {head} | {title} | {url}")

if __name__ == "__main__":
    main()
