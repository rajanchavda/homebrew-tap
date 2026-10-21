cask "secret-manager" do
  version "1.2.0"
  sha256 "5b9a4da3b18d03dc64b93879d47be6d25a31d695e7c237ece44c07a1c54019d9"

  url "https://github.com/rajanchavda/secret-manager/releases/download/v#{version}/Secret-Manager-#{version}.dmg"
  name "Secret Manager"
  desc "Hardware-grade Touch ID Secret Manager and stealth secret injection"
  homepage "https://github.com/rajanchavda/secret-manager"

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
