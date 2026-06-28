cask "weatheroverlay" do
  version "1.6.5" # Your app version
  sha256 :no_check

  # URL pointing to the binary in your GitHub Releases
  url "https://github.com/rajanchavda/weather-widget/raw/main/WeatherOverlay.zip"
  name "WeatherOverlay"
  desc "Ambient weather menu bar overlay for macOS"
  homepage "https://github.com/rajanchavda/weather-widget"

  # The exact name of your .app file inside the zip/dmg
  app "WeatherOverlay.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/WeatherOverlay.app"]
  end

  # Optional: Automatically update checking
  livecheck do
    url :url
    strategy :github_latest
  end
end
