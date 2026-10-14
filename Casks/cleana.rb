cask "cleana" do
  version "1.3.0"
  sha256 "a959637d1e06682e6c57ed85fe2575c9ab79a999cb844861c6823bca67920368"

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
