class MinterGoNode < Formula
  desc "Minter blockchain node"
  homepage "https://github.com/maxwildcat/minter-go-node"
  url "https://github.com/maxwildcat/minter-go-node/releases/download/v0.1.0/minter-go-node-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "430c554e14e718b0151ed2a9a442050690f92fdb4580d940a39c046d5c036ca3"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "minter-go-node"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minter-go-node --version")
  end
end
