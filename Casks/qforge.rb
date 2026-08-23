cask "qforge" do
  version "1.4.0"
  sha256 "89c3924360498405f322c4a002887503ff0a2b7082d6d921b2c422149a0722c6"

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
