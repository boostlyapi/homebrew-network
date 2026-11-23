class WireguardInstall < Formula
  desc "WireGuard installer script"
  homepage "https://github.com/Cabral-it/wireguard-install"
  url "https://github.com/Cabral-it/wireguard-install/releases/download/v0.1.0/wireguard-install-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "183a4b3d6945cb955fd78efa1e5b8833b90f38c343f844d805224e099565d170"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "wireguard-install"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wireguard-install --version")
  end
end
