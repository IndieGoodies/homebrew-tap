cask "starview" do
  version "1.7.9"
  sha256 "2a30f95a8944ab629ea5421a111dd516daf58d0db96a6e08109d4536360f510b"

  url "https://github.com/IndieGoodies/Starview/releases/download/#{version}/Starview.dmg"
  name "Starview"
  desc "App Store keyword research and rank tracking"
  homepage "https://indiegoodies.com/starview"

  auto_updates true
  depends_on macos: :tahoe

  app "Starview.app"

  zap trash: "~/Library/Containers/com.indiegoodies.AppStoreBot"
end
