cask "weatheroverlay" do
  version "1.6.3"
  sha256 "2011231f99a2a889af664a9e345f6143b68cf105c428ad36d3f158c87da92297"

  url "https://github.com/rajanchavda/weather-widget/releases/download/v#{version}/WeatherOverlay.zip"
  name "WeatherOverlay"
  desc "Ambient weather menu bar overlay for macOS"
  homepage "https://github.com/rajanchavda/weather-widget"

  app "WeatherOverlay.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "\#{appdir}/WeatherOverlay.app"]
  end

  zap trash: [
    "~/.gemini/antigravity-cli/brain/7fcdcce5-12c9-4da4-b893-a73781ca8854"
  ]
end