cask "readme" do
  version "1.0"
  sha256 "dd5b22289d387167aebb65ee54224cf088143846c646aaf01bab69201e7e8812"

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
