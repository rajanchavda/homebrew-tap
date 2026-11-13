cask "readme" do
  version "1.4.1"
  sha256 "6b3f37231c09ffaecf0997d3c4d4b15a6d5ad286708dbdf7a862cb3af36b690d"

  url "https://github.com/rajanchavda/readme/releases/download/v#{version}/Readme-#{version}.dmg"
  name "Readme"
  desc "EPUB reader for the Mac"
  homepage "https://github.com/rajanchavda/readme"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Readme.app"

  # The app isn't signed with an Apple developer account, so Gatekeeper would block it.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Readme.app"]
  end

  zap trash: [
    "~/Library/Containers/com.rajanchavda.Readme",
  ]
end
