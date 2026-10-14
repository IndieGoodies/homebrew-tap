cask "almighty" do
  version "2.13.1"
  sha256 "89db65de8ea244ddb8d43c0d630392fa30574a5f2d24208204784d24c552135c"

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
