cask "untask" do
  version "1.0.0"
  sha256 "3e228bf7c3d4ba21d739ea5d986e9f2f513314a3654e91a227c5f83ce754d13c"

  url "https://github.com/mbenhard/untask/releases/download/v0.1.0/Untask-darwin-arm64-#{version}.zip"
  name "Untask"
  desc "Local-first personal task manager with optional AI assistant"
  homepage "https://github.com/mbenhard/untask"

  app "Untask.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Untask.app"],
                   sudo: false
  end
end
