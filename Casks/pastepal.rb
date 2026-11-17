cask "pastepal" do
  version "2.22.4"
  sha256 "deb34b1dd08973d7ea13cd350d3fcaf5f66b169cdbaf4da799019918f3be898a"

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
