class NodeBinanceTrader < Formula
  desc "Binance trading bot"
  homepage "https://github.com/diaghi13/node-binance-trader"
  url "https://github.com/diaghi13/node-binance-trader/releases/download/v0.1.0/node-binance-trader-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "44a18923a2587c8179e185830684881fee747c49dfc48f3bdd13c902b338756b"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "node-binance-trader"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/node-binance-trader --version")
  end
end
