cask "pastepal" do
  version "2.22.0"
  sha256 "742c84a996ec25f7d32b8f2e4ace9e4c5982c2ca76106b8685ea2a50ab6d8e9d"

  url "https://github.com/IndieGoodies/PastePal/releases/download/#{version}/PastePal.dmg"
  name "PastePal"
  desc "Universal clipboard manager"
  homepage "https://indiegoodies.com/pastepal"

  auto_updates true
  depends_on :macos

  app "PastePal.app"

  zap trash: [
    "~/Library/Application Support/com.onmyway133.PastePal",
    "~/Library/Caches/com.onmyway133.PastePal",
    "~/Library/HTTPStorages/com.onmyway133.PastePal",
    "~/Library/Preferences/com.onmyway133.PastePal.plist",
    "~/Library/Saved Application State/com.onmyway133.PastePal.savedState",
  ]
end
