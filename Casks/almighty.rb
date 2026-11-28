cask "almighty" do
  version "2.14.1"
  sha256 "48e86cb2754778bc9965beb785671f6a742e83fd351c928d69b6c7df89174a61"

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
