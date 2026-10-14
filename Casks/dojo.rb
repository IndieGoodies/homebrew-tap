cask "dojo" do
  version "1.0.0"
  sha256 "acfbee57b4221ca780fd317d655bcc200deef1d5e8f1185ba15d5f00f99beafa"

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
