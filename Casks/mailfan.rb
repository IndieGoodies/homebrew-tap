cask "mailfan" do
  version "1.1.1"
  sha256 "fc2ea93d3dcc7b31522288d25c9d76e40d5ff48dd7c2a1a1b9cd227857e2662e"

  url "https://github.com/IndieGoodies/Mailfan/releases/download/#{version}/Mailfan.dmg"
  name "Mailfan"
  desc "Email client with one inbox for every account, keyboard triage and local AI"
  homepage "https://indiegoodies.com/mailfan"

  auto_updates true
  depends_on macos: :tahoe

  app "Mailfan.app"

  zap trash: [
    "~/Library/Application Support/com.indiegoodies.mailfan",
    "~/Library/Application Support/Mailfan",
    "~/Library/Caches/com.indiegoodies.mailfan",
    "~/Library/HTTPStorages/com.indiegoodies.mailfan",
    "~/Library/HTTPStorages/com.indiegoodies.mailfan.binarycookies",
    "~/Library/Preferences/com.indiegoodies.mailfan.plist",
    "~/Library/Saved Application State/com.indiegoodies.mailfan.savedState",
  ]
end
