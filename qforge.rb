cask "qforge" do
  version "1.0.0"
  sha256 "a2374b041f831c84fe4703fa188e9a0fbf91365b8080493adb13e2da95af3be9"

  url "https://github.com/AdarshaGS/QForge/releases/download/v#{version}/SQL-Workbench.dmg"
  name "QForge"
  desc "Professional database client - free alternative to TablePlus"
  homepage "https://github.com/AdarshaGS/QForge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "SQL-Workbench.app"

  zap trash: [
    "~/Library/Application Support/SQL-Workbench",
    "~/Library/Preferences/com.sqlworkbench.plist",
    "~/Library/Saved Application State/com.sqlworkbench.savedState",
    "~/connections.json",
    "~/query_history.json",
  ]

  caveats <<~EOS
    QForge has been installed!

    Features:
      • MySQL, PostgreSQL, SQLite support
      • SSH tunnels with key authentication
      • Inline editing with Cmd+S
      • Dark/Light themes
      • SQL autocomplete
      • Export to SQL, CSV, Excel, JSON

    Quick Start:
      1. Launch from Applications or run: open -a SQL-Workbench
      2. Click "+" to add a database connection
      3. Start managing your databases!

    Documentation: https://github.com/AdarshaGS/QForge
  EOS
end
