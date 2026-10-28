cask "weatheroverlay" do
  version "2.7.0"
  sha256 "d5a1f5b3a12ee3c2b73bcdcf32c65e0ccbda3d9f75e85780b1f71ac8b10ae48b"

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
