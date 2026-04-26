class Mip < Formula
  desc "Pull container images through registry-aware mirrors"
  homepage "https://github.com/vlln/mip"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vlln/mip/releases/download/v#{version}/mip_0.1.0_darwin_amd64.tar.gz"
      sha256 "3942687942b5b6e30b6d477040c10053568a8c852a9e09f7cf75956c30c11ece"
    end

    on_arm do
      url "https://github.com/vlln/mip/releases/download/v#{version}/mip_0.1.0_darwin_arm64.tar.gz"
      sha256 "5e68e3990c7fb948c9fec222a69433c74762017a3b203a1a52c1d567a2569866"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vlln/mip/releases/download/v#{version}/mip_0.1.0_linux_amd64.tar.gz"
      sha256 "d2365745016aea18b2b30cbc2f66b23bd7eededcc6db609232d6144ee292916a"
    end

    on_arm do
      url "https://github.com/vlln/mip/releases/download/v#{version}/mip_0.1.0_linux_arm64.tar.gz"
      sha256 "8eabcbde51aab1d0cb03bf4f4d1c80ecb60618ab8668d4bc7f8f22bacdeefa25"
    end
  end

  def install
    bin.install "mip"
  end

  test do
    system "#{bin}/mip", "version"
  end
end
