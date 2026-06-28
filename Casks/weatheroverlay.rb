cask "weatheroverlay" do
  version "1.6.6"
  sha256 "4a53b666c6090da6b01a18a31a5d9bbe6c317a0c1e4160f5d3ab04383763f76f"

  url "https://github.com/rajanchavda/weather-widget/releases/download/v#{version}/WeatherOverlay.zip"
  name "WeatherOverlay"
  desc "Ambient weather menu bar overlay for macOS"
  homepage "https://github.com/rajanchavda/weather-widget"

  app "WeatherOverlay.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/WeatherOverlay.app"]
  end

  livecheck do
    url :url
    strategy :github_latest
  end
end
