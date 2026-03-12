#!/usr/bin/env python3
"""Approve the e2e approval job in a CircleCI workflow.

Usage:
  python3 approve_e2e.py <workflow_id>

Reads CIRCLECI_TOKEN from env or falls back to ~/.zshrc.local.
"""
import json
import os
import re
import sys
import urllib.request

SECRETS_FILE = os.path.expanduser("~/.zshrc.local")


def get_token():
    token = os.environ.get("CIRCLECI_TOKEN")
    if token:
        return token
    if os.path.exists(SECRETS_FILE):
        with open(SECRETS_FILE) as f:
            for line in f:
                m = re.match(r'^export CIRCLECI_TOKEN="(.+)"', line)
                if m:
                    return m.group(1)
    return None


def api(method, path, token):
    url = f"https://circleci.com/api/v2{path}"
    req = urllib.request.Request(url, method=method)
    req.add_header("Circle-Token", token)
    req.add_header("Content-Type", "application/json")
    with urllib.request.urlopen(req) as resp:
        return json.loads(resp.read())


def main():
    if len(sys.argv) < 2:
        print("Usage: approve_e2e.py <workflow_id>", file=sys.stderr)
        sys.exit(1)

    workflow_id = sys.argv[1]
    token = get_token()
    if not token:
        print("ERROR: CIRCLECI_TOKEN not found in env or ~/.zshrc.local", file=sys.stderr)
        sys.exit(1)

    # List jobs in the workflow
    data = api("GET", f"/workflow/{workflow_id}/job", token)
    items = data.get("items", [])

    # Find the approval job
    approval_job = None
    for job in items:
        if job.get("type") == "approval" and job.get("status") in ("on_hold",):
            approval_job = job
            break

    if not approval_job:
        # Print all jobs for debugging
        for job in items:
            print(f"  {job['name']}: type={job.get('type','')}, status={job['status']}", file=sys.stderr)
        print("ERROR: No approval job found on_hold", file=sys.stderr)
        sys.exit(2)

    approval_id = approval_job["approval_request_id"]
    job_name = approval_job["name"]
    print(f"Approving job '{job_name}' (approval_request_id: {approval_id})")

    # Approve the job
    api("POST", f"/workflow/{workflow_id}/approve/{approval_id}", token)
    print("Approved successfully!")


if __name__ == "__main__":
    main()
