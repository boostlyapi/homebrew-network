class EthereumDocker < Formula
  desc "Ethereum node in Docker"
  homepage "https://github.com/haritbrightness/ethereum-docker"
  url "https://github.com/haritbrightness/ethereum-docker/releases/download/v0.1.0/ethereum-docker-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "e31aad521e8188e75da52a88b57ce859dae37cf1c539e658a533d3c86bb2b8ae"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "ethereum-docker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ethereum-docker --version")
  end
end
