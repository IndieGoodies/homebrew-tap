cask "mailfan" do
  version "1.0.5"
  sha256 "3db61889239118ec06c9b734505038b07ca53dfe96e71b0d23340c499cdd61d5"

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
