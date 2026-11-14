cask "readme" do
  version "1.6"
  sha256 "92193aa88d23aa3f79cfa4c981bbba0288c1eb1315e6f6a9dc2424f67f601ef3"

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
