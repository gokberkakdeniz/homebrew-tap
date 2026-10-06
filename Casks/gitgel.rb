cask "gitgel" do
  version "0.1.16"
  sha256 "00cd94a23816e5683867292b754828c8e26f78e6f4b51c8e2837be4fdaa0d4c8"

  url "https://github.com/gokberkakdeniz/homebrew-tap/releases/download/gitgel-#{version}/Gitgel-#{version}-macos-arm64.zip"
  name "Gitgel"
  desc "Read-only reviewer for git branches and worktrees across repositories"
  homepage "https://github.com/gokberkakdeniz/homebrew-tap"

  auto_updates true
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
