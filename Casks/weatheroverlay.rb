cask "weatheroverlay" do
  version "2.4.1"
  sha256 "538fca9881aefcc5a031919a8c83f299d358b0206a3db5326aaa81a690787e88"

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
