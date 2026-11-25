cask "notemall" do
  version "1.1.0"
  sha256 "3a43c2eac9b73e74d84d536225e7c59cd0642eaf075db8cf030412a403ed6e71"

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
