class Kubebox < Formula
  desc "Terminal Kubernetes console"
  homepage "https://github.com/Anfacgit/kubebox"
  url "https://github.com/Anfacgit/kubebox/releases/download/v0.1.0/kubebox-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "9a0fd202e2fd544ea1eafe046c85613a9ab4e2104dfc017d4601fd8e5d885571"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "kubebox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubebox --version")
  end
end
