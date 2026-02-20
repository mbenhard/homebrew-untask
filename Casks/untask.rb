cask "untask" do
  version "0.1.10"
  sha256 "18dbe5aa040c5f1df63c21467d75ba20ce018ef0a00979c5549c77111edfaa36"

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
