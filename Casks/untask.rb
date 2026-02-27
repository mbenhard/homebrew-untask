cask "untask" do
  version "0.1.15"
  sha256 "2d93cf56fd4a33969b7a95b27c2c221b4e33997ca93bea321ad3893331038af4"

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
