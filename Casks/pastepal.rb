cask "pastepal" do
  version "2.22.5"
  sha256 "88aa303015dda126021f4449916103bff6cfb9e549051bf212ab50cadd076433"

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
