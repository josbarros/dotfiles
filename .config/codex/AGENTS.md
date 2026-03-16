# Global AGENTS Instructions

This file defines global instructions for Codex across repositories.

Before proposing or implementing any file change, show the concrete diff first and wait for approval.

## Scope of Changes

You may only modify:
1. files and directories that are managed by `yadm` in this environment, or
2. files inside projects whose repository root defines its own `AGENTS.md`.

### Managed directories and files

| Path | Type |
|------|------|
| `~/.config/` | directory |
| `~/.local/bin/` | directory |
| `~/.local/share/gnupg/` | directory |
| `~/.local/share/public.asc` | file |
| `~/.local/share/yadm/archive` | file |
| `~/.ssh/` | directory |
| `~/.profile` | file |
| `~/.zprofile` | file |
| `~/README.md` | file |

Do not create, edit, or delete files outside of those two allowed scopes.
Run `yadm list` to get the current authoritative list of tracked files for the dotfiles scope.
If working outside the yadm-managed scope, only proceed when the target project's repository root contains a defined `AGENTS.md`.
