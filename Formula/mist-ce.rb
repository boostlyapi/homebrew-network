class MistCe < Formula
  desc "Docker swarm monitoring"
  homepage "https://github.com/bhautikvirani/mist-ce"
  url "https://github.com/bhautikvirani/mist-ce/releases/download/v0.1.0/mist-ce-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "4c872e751216f00f4a70ff4f64a23e5f6061d3da6e555f231b484c1e70574062"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "mist-ce"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mist-ce --version")
  end
end
