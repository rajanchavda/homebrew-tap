cask "weatheroverlay" do
  version "2.3.1"
  sha256 "5fc193912616ea5b852ce45f5fba1a147961916340d80b0195bc6d1cdd720eff"

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
