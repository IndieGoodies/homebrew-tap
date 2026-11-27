cask "notemall" do
  version "1.1.4"
  sha256 "98b37c4d8271ae3b121a1da9b321e6c8985a790d5cd0596ac53828ad5f4bda69"

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
