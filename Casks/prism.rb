cask "prism" do
  version "0.2.1"
  sha256 "c6423caf28f9b9dbaf646fe7a2810e3418ac4c14c5cc37f86cdfab8a138999da"

  url "https://github.com/nowgnas/prism/releases/download/v0.2.1/Prism.zip"
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
