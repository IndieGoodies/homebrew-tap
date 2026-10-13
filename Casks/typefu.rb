cask "typefu" do
  version "1.1.0"
  sha256 "916143d0a1d2c0deeb1005ac81c31cd3ee65448260bc732246b39395b3ecc6ac"

  url "https://github.com/IndieGoodies/Typefu/releases/download/#{version}/Typefu.zip"
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
