cask "cleana" do
  version "1.4.0"
  sha256 "2df91bd4419203de3af8e036a92d621f706d6fe566fab590868e2a9de05f0bec"

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
