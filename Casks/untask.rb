cask "untask" do
  version "0.2.0"
  sha256 "71edb69f83afc4e6777e87a2be3bc69f54bb8468b56560c42331bcc3dcd8ce75"

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
