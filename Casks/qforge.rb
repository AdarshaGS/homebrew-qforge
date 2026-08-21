cask "qforge" do
  version "1.3.0"
  sha256 "5173391a2f1f8490e36d2025bd3cdc0caf1089073209f438eafc1ff4505f16e5"

  url "https://github.com/AdarshaGS/QForge/releases/download/v#{version}/QForge.dmg"
  name "QForge"
  desc "SQL client for MySQL, PostgreSQL, and SQLite"
  homepage "https://github.com/AdarshaGS/QForge"

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

    Docs & source: https://github.com/AdarshaGS/QForge
  EOS
end
