cask "cleana" do
  version "1.0.0"
  sha256 "8ab4f683fcc8dd17f51e6e57db25c0ad9a6234e24e13a1c5f9cdafb9940f0b78"

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
