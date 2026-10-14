cask "dojo" do
  version "1.1.0"
  sha256 "4cb0d81eb0fe45a6367bbce700d91ad36f1d3c82621acd210eb70fb050866f78"

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
