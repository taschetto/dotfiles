# Dotfiles

Personal dotfiles for macOS, managed with [Dotbot](https://github.com/anishathalye/dotbot).

## Structure

- `claude/` — Claude Code config (symlinked to `~/.claude`). Contains settings, skills, plugins, and project-specific data.
- `git/` — Git config (`gitconfig` symlinked to `~/.gitconfig`). Uses 1Password SSH signing, diff-so-fancy, and ff-only pulls.
- `zsh/` — Zsh config (`zshrc` symlinked to `~/.zshrc`). Uses Spaceship prompt, Antidote plugin manager, nvm, pyenv, rbenv.
- `vim/` — Vim config (`vimrc` symlinked to `~/.vimrc`).
- `bash/` — Legacy bash config (not actively used).

## Installation

`./install` runs Dotbot, which reads `install.conf.yaml` to create symlinks and init submodules.

## Claude skills

Custom skills live in `claude/skills/`. Each has a `SKILL.md` defining its behavior:

- `/standup` — generates standup updates from Linear + GitHub, sends via Slack DM
- `/reformat-ticket` — reformats Linear ticket descriptions
- `/update-pr-description` — updates PR description from diff + Linear ticket
- `/update-all-prs` — updates branches for all open PRs behind main
- `/check-pr-status` — shows CI, review, and merge readiness for open PRs
- `/ship-queue` — sequentially merges "Ready to Ship" PRs with auto-merge + e2e approval
- `/sync-branches` — deletes local branches whose remote counterparts have been merged or deleted

## Notes

- Secrets (AWS profiles, API tokens) live in `~/.zshrc.local` which is sourced by zshrc but not tracked here.
- The `claude/settings.json` is the global Claude Code settings file (symlinked to `~/.claude/settings.json`).
