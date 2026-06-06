cask "qforge" do
  version "1.0.1"
  sha256 "899fb82fac12f0fcbc660d5a73f109e1286207fb6c3a2ca41e26da0da9bbca05"

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