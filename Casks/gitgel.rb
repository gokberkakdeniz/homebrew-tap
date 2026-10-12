cask "gitgel" do
  version "0.1.21"
  sha256 "47479611e6f9623b8b9eb4447203ed454d5663d64249d165ae2ba529584d9a6b"

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
