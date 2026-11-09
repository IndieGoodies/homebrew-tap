cask "macdestroyer" do
  version "1.1.1"
  sha256 "f00395460d74e9db860b698ba9f6eba702983e2e1690ee8d8cb11816e8aa4118"

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
