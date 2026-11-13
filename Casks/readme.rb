cask "readme" do
  version "1.5"
  sha256 "245807123ddec28ee4c80891e49bc79d9dcb835f7c74cc65de1b66d8301cd68a"

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
