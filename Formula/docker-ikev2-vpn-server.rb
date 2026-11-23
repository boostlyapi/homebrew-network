class DockerIkev2VpnServer < Formula
  desc "IKEv2 VPN server in Docker"
  homepage "https://github.com/Cabral-it/docker-ikev2-vpn-server"
  url "https://github.com/Cabral-it/docker-ikev2-vpn-server/releases/download/v0.1.0/docker-ikev2-vpn-server-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "ab2336a2e91d1298f3c95006bde003d9b386cde6b351886a42b65c9066236d44"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "docker-ikev2-vpn-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/docker-ikev2-vpn-server --version")
  end
end
