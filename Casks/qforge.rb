cask "qforge" do
  version "1.4.1"
  sha256 "da01c18cc9955f2ec1f03608e5a2b6a477d6aa5c2882d3e933f9662afdd6597e"

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
