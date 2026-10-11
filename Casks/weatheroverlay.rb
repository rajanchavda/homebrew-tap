cask "weatheroverlay" do
  version "2.4.0"
  sha256 "3ef244f280e043a137f0f3d17556fcff83dd4a7478672d322566c43c7b306803"

  url "https://github.com/rajanchavda/weather-widget/releases/download/v#{version}/WeatherOverlay.zip"
  name "WeatherOverlay"
  desc "Ambient weather menu bar overlay for macOS"
  homepage "https://github.com/rajanchavda/weather-widget"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WeatherOverlay.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/WeatherOverlay.app"]
  end

  zap trash: "~/Library/Preferences/com.weatheroverlay.WeatherOverlay.plist"
end
