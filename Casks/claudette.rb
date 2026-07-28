cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "82cee006416562d54dade9799648169314547123424199fb8007ea64c3af148f",
         intel: "81ef964be854a5d67ae30e8efb460a859bdc105e37c856ec58af8c7b5c8536e5"

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
