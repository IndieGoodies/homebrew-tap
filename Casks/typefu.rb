cask "typefu" do
  version "1.1.6"
  sha256 "6d637f3e403a49cf1261f89974e5cac3c7b3a8bd3c19cd12663fbf8cacef5104"

  url "https://github.com/IndieGoodies/Typefu/releases/download/#{version}/Typefu.dmg"
  name "Typefu"
  desc "Text expander with fill-in snippets, selected text actions and on-device AI"
  homepage "https://indiegoodies.com/typefu"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Typefu.app"

  zap trash: [
    "~/Library/Application Support/com.onmyway133.Expander",
    "~/Library/Caches/com.onmyway133.Expander",
    "~/Library/HTTPStorages/com.onmyway133.Expander",
    "~/Library/Preferences/com.onmyway133.Expander.plist",
    "~/Library/Saved Application State/com.onmyway133.Expander.savedState",
  ]
end
