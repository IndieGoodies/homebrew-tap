cask "starview" do
  version "1.7.8"
  sha256 "d0f5329a7bae1572a789bb3dfcbecc8c1766dba556b867b6df7230a0fc53a164"

  url "https://github.com/IndieGoodies/Starview/releases/download/#{version}/Starview.dmg"
  name "Starview"
  desc "App Store keyword research and rank tracking"
  homepage "https://indiegoodies.com/starview"

  auto_updates true
  depends_on macos: :tahoe

  app "Starview.app"

  zap trash: "~/Library/Containers/com.indiegoodies.AppStoreBot"
end
