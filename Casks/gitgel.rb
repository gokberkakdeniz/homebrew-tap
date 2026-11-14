cask "gitgel" do
  version "0.2.4"
  sha256 "846d5643a4ce4b6845ec2414e32eedb5e5e8c419ae2ae99f788566a5e9b9a6ef"

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
