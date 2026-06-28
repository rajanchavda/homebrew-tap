cask "weatheroverlay" do
  version "1.6.5"
  sha256 "0ded1516bec4c7571993d7d59763f0442945d8e57d5e86b7202e4278ee87fd2c"

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