cask "readme" do
  version "1.8"
  sha256 "b23ca8b5fada3c3d8e3e8adcc02a169782ead06af08ded12bcc77de1c67405c5"

  url "https://github.com/rajanchavda/readme/releases/download/v#{version}/Readme-#{version}.dmg"
  name "Readme"
  desc "EPUB reader for the Mac"
  homepage "https://github.com/rajanchavda/readme"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Readme.app"

  # The app isn't signed with an Apple developer account, so Gatekeeper would block it.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Readme.app"]
  end

  zap trash: "~/Library/Containers/com.rajanchavda.Readme"
end
