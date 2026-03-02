cask "untask" do
  version "0.1.17"
  sha256 "79621d9bfd466db5ef0ad28bbb324770ccd5f9c4c321f5d4fc9c941eedb41b1d"

  url "https://github.com/mbenhard/untask/releases/download/v#{version}/Untask-darwin-arm64-#{version}.zip"
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
