cask "turbo" do
  version "1.0.1"
  sha256 "0db387b99f2d03c07b43e618994cd5fe16687a49d25b98d08554428cd4703c2e"

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
