cask "typefu" do
  version "1.1.7"
  sha256 "db4b5ad7a36d518169fa46b0102d3d1425cde86a7882fece982bf3374521ae5e"

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
