cask "gitgel" do
  version "0.1.10"
  sha256 "320a9ea8fd194e4482f5fceecb96b63caff30a874e7ef2113a4da8bdd715888d"

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
