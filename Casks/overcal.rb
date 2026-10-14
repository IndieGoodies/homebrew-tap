cask "overcal" do
  version "1.2.2"
  sha256 "c4401a3f26202052b3c6fe3cbaa3193ba6210869be11d3f523cff97657d34275"

  url "https://github.com/IndieGoodies/Overcal/releases/download/#{version}/Overcal.dmg"
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
