cask "prism" do
  version "0.1.7"
  sha256 "26c7daf774fa00699b893c3fc1f8b1f9206cb9cc8955dbc32fb02db2744c2a85"

  url "https://github.com/nowgnas/prism/releases/download/v0.1.7/Prism.zip"
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
