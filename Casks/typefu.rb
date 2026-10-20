cask "typefu" do
  version "1.1.4"
  sha256 "42c7d0cf5a3f01ecb84338b44f1a2ca6b65406fa43b3b6c4ce0e08afbb4119e5"

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
