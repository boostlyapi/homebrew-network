class Skooner < Formula
  desc "Lightweight Kubernetes dashboard"
  homepage "https://github.com/Akshay-G-Dev/skooner"
  url "https://github.com/Akshay-G-Dev/skooner/releases/download/v0.1.0/skooner-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "b677822910d73f66d93fe1b9695b3ab898e68cd13ff7a1253a7746c403e9f77a"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "skooner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skooner --version")
  end
end
