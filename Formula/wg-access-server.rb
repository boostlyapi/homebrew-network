class WgAccessServer < Formula
  desc "WireGuard VPN access server"
  homepage "https://github.com/EngHirsi/wg-access-server"
  url "https://github.com/EngHirsi/wg-access-server/releases/download/v0.1.0/wg-access-server-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "e9422bd4225d7b357511afd0079f7d0f30172796d45ba77481366f84591c7d76"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "wg-access-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wg-access-server --version")
  end
end
