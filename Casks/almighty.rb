cask "almighty" do
  version "2.13.2"
  sha256 "849d83e459a1b2ab1ebc3398a19c58bc1b6b587e1f42a32f9155a2acd28a704b"

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
