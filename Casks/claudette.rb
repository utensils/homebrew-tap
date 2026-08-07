cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.1"
  sha256 arm:   "b4ae97ca4b36db24ff61fd2cdd709cdd94201863262ffe2345ef19b1aba39adb",
         intel: "62e1e1578cbe1240e6b2006a646e53cc8369da49fe30db5a72f6ac19a0487c1c"

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
