cask "macdestroyer" do
  version "1.2.2"
  sha256 "944e071cdef4412304b9c9fa1208a39802fa1a6953cd96bf332f5eda9fb26518"

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
