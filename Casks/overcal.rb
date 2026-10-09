cask "overcal" do
  version "1.1.0"
  sha256 "31e20fee9e4f7dd9defe3e99c0b4db4cd3e0de4a98844f2cf7e4854d9c40c270"

  url "https://github.com/IndieGoodies/Overcal/releases/download/#{version}/Overcal.zip"
  name "Overcal"
  desc "Menu bar calendar with agenda, world clocks and meeting reminders"
  homepage "https://indiegoodies.com/overcal"

  auto_updates true
  depends_on macos: :tahoe

  app "Overcal.app"

  zap trash: [
    "~/Library/Application Support/com.indiegoodies.Barcalendar",
    "~/Library/Caches/com.indiegoodies.Barcalendar",
    "~/Library/HTTPStorages/com.indiegoodies.Barcalendar",
    "~/Library/Preferences/com.indiegoodies.Barcalendar.plist",
    "~/Library/Saved Application State/com.indiegoodies.Barcalendar.savedState",
  ]
end
