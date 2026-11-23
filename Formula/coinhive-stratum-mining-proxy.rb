class CoinhiveStratumMiningProxy < Formula
  desc "Stratum mining proxy"
  homepage "https://github.com/zameera9502/coinhive-stratum-mining-proxy"
  url "https://github.com/zameera9502/coinhive-stratum-mining-proxy/releases/download/v0.1.0/coinhive-stratum-mining-proxy-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "8404665062fc50c65c2fc48493768f1b00b1bf66098e05f655e2c8953db603ee"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "coinhive-stratum-mining-proxy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coinhive-stratum-mining-proxy --version")
  end
end
