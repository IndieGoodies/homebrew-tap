cask "typefu" do
  version "1.1.1"
  sha256 "85848de74ed8acb0d39cef13d794ddc23cc18ab65041118676ca2a7a01be6e3a"

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
