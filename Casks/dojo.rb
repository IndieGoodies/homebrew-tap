cask "dojo" do
  version "1.1.3"
  sha256 "461c625bdb54c5ae724330833c01f55f1fa2c97efb4b1e09bee4fd8f1ed3cb4e"

  url "https://github.com/IndieGoodies/Dojo/releases/download/v#{version}/Dojo.zip"
  name "Dojo"
  desc "Developer tools for formatting, converting, encoding and generating"
  homepage "https://github.com/IndieGoodies/Dojo"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Dojo.app"

  zap trash: [
    "~/Library/Application Support/com.onmyway133.DevTools",
    "~/Library/Caches/com.onmyway133.DevTools",
    "~/Library/LaunchAgents/Dojo.plist",
    "~/Library/WebKit/com.onmyway133.DevTools",
  ]
end
