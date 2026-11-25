cask "starview" do
  version "1.8.0"
  sha256 "981195e34f2b2ef75e184f6c5bc3fe9791baa559ba748fe64396535038da9734"

  url "https://github.com/IndieGoodies/Starview/releases/download/#{version}/Starview.dmg"
  name "Starview"
  desc "App Store keyword research and rank tracking"
  homepage "https://indiegoodies.com/starview"

  auto_updates true
  depends_on macos: :tahoe

  app "Starview.app"

  zap trash: "~/Library/Containers/com.indiegoodies.AppStoreBot"
end
