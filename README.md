# homebrew-tap

Homebrew casks for my apps. The app builds are attached to this repository's releases.

```bash
brew install --cask gokberkakdeniz/tap/gitgel
```

Updates come with `brew upgrade`.

| Cask | App |
| --- | --- |
| `gitgel` | Gitgel: read-only reviewer for git branches and worktrees across repositories (macOS, Apple silicon) |

The apps are ad-hoc signed and not notarized. The casks remove the quarantine flag after
installing, so macOS does not block the first launch.
