cask "prism" do
  version "0.1.4"
  sha256 "815acfe16de72f41286d75f60048ae683e630a25fdd388d6c0a639288d50a334"

  url "https://github.com/nowgnas/prism/releases/download/v0.1.4/Prism.zip"
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
