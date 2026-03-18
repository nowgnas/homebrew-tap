cask "prism" do
  version "0.1.5"
  sha256 "be8dd35f8296cf8508cf103d1daab5c28441498d7a48b46d614b582ae52191c5"

  url "https://github.com/nowgnas/prism/releases/download/v0.1.5/Prism.zip"
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
