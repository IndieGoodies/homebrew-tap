cask "macdestroyer" do
  version "1.0.0"
  sha256 "5361e937284aecbbb4dd6891499aead1aa4579029b55f9d91416c2abbaf27005"

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
