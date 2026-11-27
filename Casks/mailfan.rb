cask "mailfan" do
  version "1.1.0"
  sha256 "0d5f24ceaf080063ef1293e87b8766f8bdc9b03ef7040a730ad2abd2fb26aedf"

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
