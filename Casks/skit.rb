cask "skit" do
  version "0.2.0"

  on_arm do
    sha256 "5ec61de234c08d58994eb98498358a288d6d9f35a6052eb4c3386d8937c1736d"

    url "https://github.com/vlln/skit/releases/download/v#{version}/skit_Darwin_arm64.tar.gz"
  end

  on_intel do
    sha256 "559fd354847a379c3695683ba63b512cee80bf59739955572a4d38bdb73f36eb"

    url "https://github.com/vlln/skit/releases/download/v#{version}/skit_Darwin_x86_64.tar.gz"
  end

  name "skit"
  desc "Small, reproducible Skill manager for agent ecosystems"
  homepage "https://github.com/vlln/skit"

  binary "skit"
end
