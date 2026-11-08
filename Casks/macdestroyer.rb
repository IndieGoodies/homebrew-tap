cask "macdestroyer" do
  version "1.1.0"
  sha256 "a2fae2054ad15c3cc3b57c86e8bf364f3e9471ebdbab58e2df747d5c07e53a84"

  url "https://github.com/IndieGoodies/MacDestroyer/releases/download/#{version}/MacDestroyer.dmg"
  name "MacDestroyer"
  desc "Game that wrecks a picture of your screen with weapons"
  homepage "https://indiegoodies.com/macdestroyer"

  auto_updates true
  depends_on macos: :tahoe

  app "MacDestroyer.app"

  zap trash: [
    "~/Library/Caches/com.onmyway133.MacDestroyer",
    "~/Library/HTTPStorages/com.onmyway133.MacDestroyer",
    "~/Library/Preferences/com.onmyway133.MacDestroyer.plist",
  ]
end
