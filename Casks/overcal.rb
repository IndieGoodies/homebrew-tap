cask "overcal" do
  version "1.2.1"
  sha256 "ddd0284e0e70dd68b0a7071cbdbd2b609273264f2102212d17e0b43373f75c4c"

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
