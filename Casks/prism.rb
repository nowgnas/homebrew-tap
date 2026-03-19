cask "prism" do
  version "0.1.6"
  sha256 "38024f66086eefe1a54cc7fb0404c536bb203248d49ee44102759c9c137168e0"

  url "https://github.com/nowgnas/prism/releases/download/v0.1.6/Prism.zip"
  name "Prism"
  desc "A neon-styled terminal multiplexer with color-coded tabs"
  homepage "https://github.com/nowgnas/prism-app"

  app "Prism.app"

  zap trash: [
    "~/.config/prism",
    "~/Library/Application Support/com.nowgnas.prism",
    "~/Library/Preferences/com.nowgnas.prism.plist",
  ]

  caveats <<~CAVEATS
    If macOS blocks the app on first launch:
      sudo xattr -cr /Applications/Prism.app
    Or allow it in System Settings > Privacy & Security.
  CAVEATS
end
