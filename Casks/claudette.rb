cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "bdd1b4f95c6206af9b3f53b07bd3f764641368cd2488f5cf7b5cd7958cc98078",
         intel: "868cab7f431884b141695a3d4df89e23c00d922fcfdca749c965495a43ec22ae"

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
