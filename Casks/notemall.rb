cask "notemall" do
  version "1.1.2"
  sha256 "c664805aa765fc4886f0c10c77f672be12f134a73fd488a614259781e3514002"

  url "https://github.com/IndieGoodies/Notemall/releases/download/#{version}/Notemall.dmg"
  name "Notemall"
  desc "Notes app that keeps every note as a Markdown file in your folder"
  homepage "https://indiegoodies.com/notemall"

  auto_updates true
  depends_on macos: :tahoe

  app "Notemall.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Caches/com.onmyway133.Notemall",
    "~/Library/HTTPStorages/com.onmyway133.Notemall",
    "~/Library/Preferences/com.onmyway133.Notemall.plist",
    "~/Library/Saved Application State/com.onmyway133.Notemall.savedState",
    "~/Library/WebKit/com.onmyway133.Notemall",
  ]
end
