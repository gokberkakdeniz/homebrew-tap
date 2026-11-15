# homebrew-tap

Homebrew casks for my apps. A cask installs the newest release of its app's own repository.

```bash
brew install --cask gokberkakdeniz/tap/gitgel
```

The apps update themselves.

| Cask | App |
| --- | --- |
| `gitgel` | Gitgel: read-only reviewer for git branches and worktrees across repositories (macOS, Apple silicon) |

The apps are ad-hoc signed and not notarized. The casks remove the quarantine flag after
installing, so macOS does not block the first launch.
