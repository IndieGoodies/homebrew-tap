cask "mailfan" do
  version "1.0.7"
  sha256 "fb319d9b57280a9d8dc8e8327a626aded94ce654822c23eb3990adafa09c6403"

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
