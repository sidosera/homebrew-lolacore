cask "bunnylol" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/sidosera/lolabunny.app/releases/download/latest/Bunnylol-#{version}-arm64.zip"
  name "Bunnylol"
  desc "Smart browser bookmarks - menu bar app"
  homepage "https://github.com/sidosera/lolabunny.app"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Bunnylol.app"

  postflight do
    system_command "/usr/bin/open", args: ["-g", "#{appdir}/Bunnylol.app"]
  end

  uninstall quit: "com.sidosera.bunnylol"

  zap trash: [
    "~/.local/share/bunnylol",
    "~/.config/bunnylol",
  ]

  caveats <<~EOS
    Bunnylol is now running in your menu bar (rabbit icon).

    To enable launch at login:
      Click the rabbit icon → "Launch at Login"

    To use as browser search engine:
      Set your browser's search URL to: http://localhost:8000/?cmd=%s

    Install plugins:
      brew install lola-core
  EOS
end
