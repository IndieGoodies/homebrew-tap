cask "overcal" do
  version "1.2.4"
  sha256 "a535b790688c44c5eec98621691a45d0e2999927415c8a578cff8d3aca529e19"

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
