class BitcoinUtxoDump < Formula
  desc "Bitcoin UTXO set dumper"
  homepage "https://github.com/venkatesh-89/bitcoin-utxo-dump"
  url "https://github.com/venkatesh-89/bitcoin-utxo-dump/releases/download/v0.1.0/bitcoin-utxo-dump-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "50a1c8ad984e6887991b3ff6cbc058320ddde9ed1523b65baac82db0ff923f2a"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "bitcoin-utxo-dump"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitcoin-utxo-dump --version")
  end
end
