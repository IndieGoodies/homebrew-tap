cask "savemode" do
  version "1.0.3"
  sha256 "dc1c38ad7780fa4654f79642bf1711273dbec4537e6905049d141651d740897b"

  url "https://github.com/IndieGoodies/SaveMode/releases/download/#{version}/SaveMode.dmg"
  name "SaveMode"
  desc "Menu bar data usage monitor that blocks chosen apps on hotspots"
  homepage "https://indiegoodies.com/savemode"

  auto_updates true
  depends_on macos: :sonoma

  app "SaveMode.app"

  zap trash: [
    "~/Library/Containers/com.indiegoodies.SaveMode",
    "~/Library/Group Containers/group.com.indiegoodies.SaveMode",
  ]
end
