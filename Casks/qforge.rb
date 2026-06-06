cask "qforge" do
  version "1.0.1"
  sha256 "215ae03c2c5578ce8d884b8ba114fe7438bf537ff7a94738a2788f02de5a5952"

  url "https://github.com/AdarshaGS/QForge/releases/download/v#{version}/QForge.dmg"

  name "QForge"
  desc "Lightweight native database client for developers"
  homepage "https://github.com/AdarshaGS/QForge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "QForge.app"

  zap trash: [
    "~/.qforge",
    "~/Library/Preferences/com.qforge.plist",
    "~/Library/Saved Application State/com.qforge.savedState",
  ]
end