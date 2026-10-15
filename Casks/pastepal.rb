cask "pastepal" do
  version "2.21.8"
  sha256 "9118e4041b4ff86accfd4755cce974b0dff919c2e54d5ba9d14cd93d29d9b2ef"

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
