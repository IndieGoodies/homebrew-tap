cask "macdestroyer" do
  version "1.2.0"
  sha256 "e598eb1afdce53e3c31fd33745315cdb4084056e74f9022f05018a2340aecb1d"

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
