cask "cleana" do
  version "1.2.0"
  sha256 "e8eaf54d287c1daad88753abaf4bb89dcd1f04de3bc3195663eb45d7584da1da"

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
