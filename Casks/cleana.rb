cask "cleana" do
  version "1.3.0"
  sha256 "8ef61b574d0ddba9ae7803597236dfc94ce95e06a587fd62d16559503b742b3d"

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
