cask "notemall" do
  version "1.1.3"
  sha256 "d0db825338ff780b613f310509c289daf05d4fd4618226fbeb8d949195d3eae4"

  url "https://github.com/IndieGoodies/Notemall/releases/download/#{version}/Notemall.dmg"
  name "Notemall"
  desc "Notes app that keeps every note as a Markdown file in your folder"
  homepage "https://indiegoodies.com/notemall"

  auto_updates true
  depends_on macos: :tahoe

  app "Notemall.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Caches/com.onmyway133.Notemall",
    "~/Library/HTTPStorages/com.onmyway133.Notemall",
    "~/Library/Preferences/com.onmyway133.Notemall.plist",
    "~/Library/Saved Application State/com.onmyway133.Notemall.savedState",
    "~/Library/WebKit/com.onmyway133.Notemall",
  ]
end
