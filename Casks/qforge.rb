cask "qforge" do
  version "1.6.0"
  sha256 "401d99694f0bce7b92a35053cf133f73f4a723795d1d7034f4404052628c0ef2"

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
