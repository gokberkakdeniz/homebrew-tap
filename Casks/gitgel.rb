cask "gitgel" do
  version "0.1.20"
  sha256 "a8d0d696e03ec3f846b113ed9cb76d88b4fb038441ca8f4b29d86f45d34e0d3f"

  url "https://github.com/gokberkakdeniz/homebrew-tap/releases/download/gitgel-#{version}/Gitgel-#{version}-macos-arm64.zip"
  name "Gitgel"
  desc "Read-only reviewer for git branches and worktrees across repositories"
  homepage "https://github.com/gokberkakdeniz/homebrew-tap"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Gitgel.app"

  zap trash: [
    "~/Library/Application Support/com.gitgel.desktop",
    "~/Library/Caches/com.gitgel.desktop",
    "~/Library/Logs/com.gitgel.desktop",
    "~/Library/WebKit/com.gitgel.desktop",
  ]
end
