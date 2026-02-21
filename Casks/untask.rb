cask "untask" do
  version "0.1.11"
  sha256 "9f66b8a62a4407d461168ccdb501f185fdc4a661b021d3acad2409394d552e4d"

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
