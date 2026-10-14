cask "dojo" do
  version "1.1.1"
  sha256 "982beb0e80c987476d03e24663e63ae84a85d952a3967c802a97d0b2d432ab5d"

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
