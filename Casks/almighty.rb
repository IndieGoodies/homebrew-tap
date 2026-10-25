cask "almighty" do
  version "2.13.5"
  sha256 "ef97274374e96dd63f904e3cbcd0b3acb382e914e2c90a0941cea03c161c2aef"

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
