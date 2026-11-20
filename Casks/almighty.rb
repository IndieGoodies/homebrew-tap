cask "almighty" do
  version "2.13.9"
  sha256 "6baf8f1597c32100506ebc3a76a1f91e098dada63edf051bcb27af8b4ce460a6"

  url "https://github.com/IndieGoodies/Almighty/releases/download/#{version}/Almighty.dmg"
  name "Almighty"
  desc "System tweaks and utilities, from hidden settings to notch actions"
  homepage "https://indiegoodies.com/almighty"

  auto_updates true
  depends_on macos: :sonoma

  app "Almighty.app"

  zap trash: [
    "~/Library/Application Support/com.onmyway133.Almighty",
    "~/Library/Caches/com.onmyway133.Almighty",
    "~/Library/Group Containers/group.com.onmyway133.Almighty",
    "~/Library/HTTPStorages/com.onmyway133.Almighty",
    "~/Library/Preferences/com.onmyway133.Almighty.plist",
    "~/Library/Saved Application State/com.onmyway133.Almighty.savedState",
  ]
end
