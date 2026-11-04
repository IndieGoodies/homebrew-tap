cask "breather" do
  version "2.0.4"
  sha256 "2c7146c7a0e62fab7a9884cc76548ef0e373cbf00c87e6c22fe28e4ea75642c9"

  url "https://github.com/IndieGoodies/Breather/releases/download/#{version}/Breather.dmg"
  name "Breather"
  desc "Break reminder for eye rest, stretching and posture"
  homepage "https://indiegoodies.com/breather"

  auto_updates true
  depends_on macos: :sonoma

  app "Breather.app"

  zap trash: [
    "~/Library/Caches/com.kenny.Breather.standalone",
    "~/Library/HTTPStorages/com.kenny.Breather.standalone",
    "~/Library/Preferences/com.kenny.Breather.standalone.plist",
    "~/Library/Saved Application State/com.kenny.Breather.standalone.savedState",
  ]
end
