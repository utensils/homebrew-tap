cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "50be03a4a01d7bcfbd41c1727930e66ba384d974628a181c7f43f8bd6be07a61",
         intel: "7276ef01152071863bc7d07afda109c35be887add9ebdefec89399390fbcb0ab"

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
