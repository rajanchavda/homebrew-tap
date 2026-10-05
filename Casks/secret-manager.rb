cask "secret-manager" do
  version "1.1.0"
  sha256 "6f118444f7b884352084cdef971eddc4b9f6888db524b3944e4f87e54fcae888"

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
