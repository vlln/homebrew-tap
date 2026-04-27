class Skit < Formula
  desc "Small, reproducible Skill manager for agent ecosystems"
  homepage "https://github.com/vlln/skit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vlln/skit/releases/download/v0.3.0/skit_Darwin_arm64.tar.gz"
      sha256 "1b8d9f9271aac589f504cf210ebee54452e2f7aeadedb036815d5f50fe503694"
    end

    on_intel do
      url "https://github.com/vlln/skit/releases/download/v0.3.0/skit_Darwin_x86_64.tar.gz"
      sha256 "3f2e144c7d208186b870ab2e2d0e0c9bc25523037c350050c128d627e8d6c094"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vlln/skit/releases/download/v0.3.0/skit_Linux_arm64.tar.gz"
      sha256 "19082f55731fba45d59eb7e99ee1cff0ad7aca16ede4b174ac7686aa4925d29e"
    end

    on_intel do
      url "https://github.com/vlln/skit/releases/download/v0.3.0/skit_Linux_x86_64.tar.gz"
      sha256 "869ed13b3815a193b79a7f294473b3b47fa05adc59a7f01df39151894423ba3c"
    end
  end

  depends_on "git"

  def install
    bin.install "skit"
  end

  test do
    assert_match "skit 0.3.0", shell_output("#{bin}/skit version")
  end
end
