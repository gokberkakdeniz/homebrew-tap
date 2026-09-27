cask "gitgel" do
  version "0.1.7"
  sha256 "3a883f26ec52f35c9115e335358f50dd33244edc65e222a8f7136a150b81e5f3"

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
