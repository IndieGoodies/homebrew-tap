cask "typefu" do
  version "1.0.0"
  sha256 "6462b0fd564217974c18ad735147d110d3b689bcbf7592db232150f7c0ddf2f6"

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
