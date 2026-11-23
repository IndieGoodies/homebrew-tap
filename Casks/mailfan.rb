cask "mailfan" do
  version "1.0.2"
  sha256 "d489b029f3fb7ace1f1659edef7d54bec0f86ca1a143037b31461a63d3c56acc"

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
