cask "coolbar" do
  version "1.5.0"
  sha256 "9b167193468b3d495895c7158d6789a56680cb4a84c49a56f8e1ff4beb4f130d"

  url "https://github.com/IndieGoodies/Coolbar/releases/download/#{version}/Coolbar.dmg"
  name "Coolbar"
  desc "Menu bar bookmarks for files, links, text and images"
  homepage "https://indiegoodies.com/coolbar"

  auto_updates true
  depends_on macos: :ventura

  app "Coolbar.app"

  zap trash: [
    "~/Library/Application Support/com.indiegoodies.LaunchDay",
    "~/Library/Caches/com.indiegoodies.LaunchDay",
    "~/Library/Group Containers/555LCL8R2S.com.indiegoodies.LaunchDay",
    "~/Library/HTTPStorages/com.indiegoodies.LaunchDay",
    "~/Library/Preferences/com.indiegoodies.LaunchDay.plist",
    "~/Library/Saved Application State/com.indiegoodies.LaunchDay.savedState",
  ]
end
