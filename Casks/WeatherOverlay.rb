cask "WeatherOverlay" do
  version "1.0.0" # Your app version
  sha256 "41ccea6317a3f30192b2125d953a3417f953165edc0801472ea654568af5f295" # The SHA256 of your zip/dmg

  # URL pointing to the binary in your GitHub Releases
  url "https://github.com/rajanchavda/weather-widget/blob/main/WeatherOverlay.zip"
  name "WeatherOverlay"
  desc "Ambient weather menu bar overlay for macOS"
  homepage "https://github.com/rajanchavda/weather-widget"

  # The exact name of your .app file inside the zip/dmg
  app "WeatherOverlay.app"

  # Optional: Automatically update checking
  livecheck do
    url :url
    strategy :github_latest
  end
end
