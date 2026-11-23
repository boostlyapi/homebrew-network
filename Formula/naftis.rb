class Naftis < Formula
  desc "Docker host monitoring dashboard"
  homepage "https://github.com/bhautikvirani/naftis"
  url "https://github.com/bhautikvirani/naftis/releases/download/v0.1.0/naftis-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "87cb102f4ca8598ebffdc7521661c3fb49a7644ab960839beaaf20d273f01e58"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "naftis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/naftis --version")
  end
end
