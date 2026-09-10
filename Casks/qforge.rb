cask "qforge" do
  version "1.5.1"
  sha256 "710498d9f8adda94d3d428990df00799c3e9f5c218d69311f75b2fa2e9ef0552"

  url "https://github.com/AdarshaGS/QForge-releases/releases/download/v#{version}/QForge.dmg"
  name "QForge"
  desc "SQL client for MySQL, PostgreSQL, and SQLite"
  homepage "https://qforge-licensing-production.up.railway.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "QForge.app"

  zap trash: [
    "~/Library/Application Support/QForge",
    "~/Library/Preferences/com.qforge.app.plist",
    "~/Library/Saved Application State/com.qforge.app.savedState",
  ]

  caveats <<~EOS
    Launch QForge from Applications, or run:
      open -a QForge

    Docs & source: https://qforge-licensing-production.up.railway.app
  EOS
end
