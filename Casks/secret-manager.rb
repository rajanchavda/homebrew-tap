cask "secret-manager" do
  version "1.0.0"
  sha256 "51f0b9b40797a5302fe68b351e5c1cd9b06dfeb0ea72890249b81c369bea0781"

  url "https://github.com/rajanchavda/security-manager/releases/download/v#{version}/Secret-Manager-#{version}.dmg"
  name "Secret Manager"
  desc "Hardware-grade Touch ID Secret Manager and stealth secret injection"
  homepage "https://github.com/rajanchavda/security-manager"

  app "Secret Manager.app"
  binary "#{appdir}/Secret Manager.app/Contents/MacOS/sec", target: "sec"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Secret Manager.app"]
  end

  livecheck do
    url :url
    strategy :github_latest
  end
end
