cask "weatheroverlay" do
  version "2.2.1"
  sha256 "ec3a5083f8ba552890a478b402f6d277a479461923ce43a16ef79d049d328be7"

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
