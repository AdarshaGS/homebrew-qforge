cask "qforge" do
  version "1.0.0"
  sha256 "a2374b041f831c84fe4703fa188e9a0fbf91365b8080493adb13e2da95af3be9"

  url "https://github.com/AdarshaGS/QForge/releases/download/v#{version}/SQL-Workbench.dmg"

  name "QForge"
  desc "Lightweight native database client for developers"
  homepage "https://github.com/AdarshaGS/QForge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SQL-Workbench.app"

  zap trash: [
    "~/.qforge",
    "~/Library/Preferences/com.qforge.plist",
    "~/Library/Saved Application State/com.qforge.savedState",
  ]
end