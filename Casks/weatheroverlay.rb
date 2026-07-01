cask "weatheroverlay" do
  version "2.1.0"
  sha256 "becbf291dd0e1a96d8c3cdfaca9797b79701e6efc3e94b1c57866b30e06f4982"

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
