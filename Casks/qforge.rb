cask "qforge" do
  version "1.6.1"
  sha256 "96cc44e39afe513c064f5ebb3d39d1a0eabcdf17916a1a0357c3043f3c66a55a"

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
