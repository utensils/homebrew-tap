cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "bde4ec3ec0c19cca895c4da7eb07009d47f1b550d5db8bbb86deffbfc6293744",
         intel: "d04896e1991b0c35dd62afe32afd14542bd9915c0c3540093e4cf380aae669d7"

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
