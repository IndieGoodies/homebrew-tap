cask "overcal" do
  version "1.2.2"
  sha256 "94bc249a1f8b6d6944b4d70fd1c27070e5f6ffc7da3d39dd8c7d28230f1b3e30"

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
