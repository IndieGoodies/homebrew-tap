cask "turbo" do
  version "1.0.0"
  sha256 "4e160f955890cc382e4368de22b1151d48f27c079f65d1b69b3767af5a4a4524"

  url "https://github.com/IndieGoodies/Turbo/releases/download/#{version}/Turbo.dmg"
  name "Turbo"
  desc "Keyboard-first launcher with clipboard history, snippets, AI and extensions"
  homepage "https://indiegoodies.com/turbo"

  auto_updates true
  depends_on macos: :tahoe

  app "Turbo.app"

  zap trash: [
    "~/Library/Application Support/Turbo",
    "~/Library/Caches/com.onmyway133.Turbo",
    "~/Library/HTTPStorages/com.onmyway133.Turbo",
    "~/Library/Preferences/com.onmyway133.Turbo.plist",
    "~/Library/Saved Application State/com.onmyway133.Turbo.savedState",
  ]
end
