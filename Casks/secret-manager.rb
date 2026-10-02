cask "secret-manager" do
  version "1.0.0"
  sha256 "1dafff1e66b5e80270db210604d3c936b22599bc10d9eb7a2b5a242a4130f2b1"

  url "https://github.com/rajanchavda/file-sec/releases/download/v#{version}/Secret-Manager-#{version}.dmg"
  name "Secret Manager"
  desc "Hardware-grade Touch ID Secret Manager and stealth secret injection"
  homepage "https://github.com/rajanchavda/file-sec"

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
