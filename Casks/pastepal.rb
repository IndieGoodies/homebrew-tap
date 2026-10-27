cask "pastepal" do
  version "2.21.9"
  sha256 "d164f74535d31a1352393f23165448b2db517c4cb6ce9db64a258b72a5adb542"

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
