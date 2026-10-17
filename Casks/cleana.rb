cask "cleana" do
  version "1.4.1"
  sha256 "ff0748bca4e5937c3f6d9d51e31253a4a3864e5a583c988997838e0e9a0d0566"

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
