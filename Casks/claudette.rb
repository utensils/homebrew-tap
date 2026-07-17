cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "96c5bb7a7f1dcfaf2a87ae57b9855227b61501bece91bccda11308cc4fcd8b68",
         intel: "9fb34741b7d6d4f15e32b46591f673ff9cf49c131fb5598cef3eaffeaf818db6"

  url "https://github.com/utensils/Claudette/releases/download/v#{version}/Claudette_#{version}_#{arch}.dmg"
  name "Claudette"
  desc "Desktop orchestrator for parallel Claude Code agents"
  homepage "https://github.com/utensils/Claudette"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Claudette.app"

  zap trash: [
    "~/.claudette",
    "~/Library/Application Support/claudette",
    "~/Library/Caches/com.claudette.app",
    "~/Library/HTTPStorages/com.claudette.app",
    "~/Library/Preferences/com.claudette.app.plist",
    "~/Library/Saved Application State/com.claudette.app.savedState",
    "~/Library/WebKit/com.claudette.app",
  ]
end
