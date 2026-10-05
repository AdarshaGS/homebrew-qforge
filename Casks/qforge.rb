cask "qforge" do
  version "1.6.2"
  sha256 "2a7f14dbbed4847b3a8241f1857b1e97d2fb6541305852069bf01a709b3e1131"

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
