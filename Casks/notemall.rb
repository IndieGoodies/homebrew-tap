cask "notemall" do
  version "1.1.5"
  sha256 "4a099fa72bb4b8c7b53ae96bf281914cead009659726cbadf549bb95e5fc1e57"

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
