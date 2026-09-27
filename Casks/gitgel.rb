cask "gitgel" do
  version "0.1.5"
  sha256 "98bd21eea196e07966033dd0f6eaf6695707dea681dbfe0a6e44328e8d030d5b"

  url "https://github.com/gokberkakdeniz/homebrew-tap/releases/download/gitgel-#{version}/Gitgel-#{version}-macos-arm64.zip"
  name "Gitgel"
  desc "Read-only reviewer for git branches and worktrees across repositories"
  homepage "https://github.com/gokberkakdeniz/homebrew-tap"

  depends_on arch: :arm64
  depends_on :macos

  app "Gitgel.app"

  # Ad-hoc signed, not notarized: without this macOS blocks the first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Gitgel.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.gitgel.desktop",
    "~/Library/Caches/com.gitgel.desktop",
    "~/Library/Logs/com.gitgel.desktop",
    "~/Library/WebKit/com.gitgel.desktop",
  ]
end
