cask "skit" do
  version "0.1.0"

  on_arm do
    sha256 "7cf19cef54326eae598c32111b63251dd3097d3cc49307752c9ac3c22b1e9068"

    url "https://github.com/vlln/skit/releases/download/v#{version}/skit_Darwin_arm64.tar.gz"
  end

  on_intel do
    sha256 "b59eda02443ea82a82a1bb8d7e2f3976c92df5a99829b71c4a6a57cf98036aca"

    url "https://github.com/vlln/skit/releases/download/v#{version}/skit_Darwin_x86_64.tar.gz"
  end

  name "skit"
  desc "Small, reproducible Skill manager for agent ecosystems"
  homepage "https://github.com/vlln/skit"

  binary "skit"
end
