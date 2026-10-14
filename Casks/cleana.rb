cask "cleana" do
  version "1.1.0"
  sha256 "dbdf1940d23e3993a3e88b6c656527724858946a564da001057bb6e782cee7ef"

  url "https://github.com/IndieGoodies/Cleana/releases/download/#{version}/Cleana.zip"
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
