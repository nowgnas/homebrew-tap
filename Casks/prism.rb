cask "prism" do
  version "0.1.9"
  sha256 "9b9cd6ef00d3b7355a20611fbbd09346bf68b2f1318b161f8702d75eca47a8ce"

  url "https://github.com/nowgnas/prism/releases/download/v0.1.9/Prism.zip"
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
