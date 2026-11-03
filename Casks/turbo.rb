cask "turbo" do
  version "1.0.3"
  sha256 "5d9f076e79cca75798f9bd141c5d3217c43c9bf86bdb8e875d75e458a6a314be"

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
