cask "weatheroverlay" do
  version "2.5.0"
  sha256 "3da1c53366d0c2b7e01a39ecb141f1ab278194bc189b6ee5a45dacfd5f83ebbd"

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
