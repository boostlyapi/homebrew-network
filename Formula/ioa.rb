class Ioa < Formula
  desc "Infrastructure operations assistant"
  homepage "https://github.com/Kittiphatphong/ioa"
  url "https://github.com/Kittiphatphong/ioa/releases/download/v0.1.0/ioa-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "d1e4cbede529c45eb85c87352115904f69a00d56b77b2c8f13a283cc246852b9"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "ioa"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ioa --version")
  end
end
