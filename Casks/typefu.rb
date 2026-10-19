cask "typefu" do
  version "1.1.3"
  sha256 "4509486c8ca1dc84ee87b792ad70bbd7c7d5ab126bd689094ac214e5a6f90020"

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
