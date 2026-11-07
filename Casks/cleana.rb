cask "cleana" do
  version "1.4.2"
  sha256 "3a1e62c1e0a58cb02f54ea752787b37ce575219bbb205d0fecb9f962083173da"

  url "https://github.com/IndieGoodies/Cleana/releases/download/#{version}/Cleana.dmg"
  name "Cleana"
  desc "Cleaner for developer caches, build output, simulators and app leftovers"
  homepage "https://indiegoodies.com/cleana"

  auto_updates true
  depends_on macos: :tahoe

  app "Cleana.app"

  zap trash: [
    "~/Library/Caches/com.indiegoodies.MacCleaner",
    "~/Library/HTTPStorages/com.indiegoodies.MacCleaner",
    "~/Library/Preferences/com.indiegoodies.MacCleaner.plist",
    "~/Library/Saved Application State/com.indiegoodies.MacCleaner.savedState",
  ]
end
