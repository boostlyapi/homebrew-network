class Dokemon < Formula
  desc "Docker container manager"
  homepage "https://github.com/Anfacgit/dokemon"
  url "https://github.com/Anfacgit/dokemon/releases/download/v0.1.0/dokemon-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "9496185c585dc5d0592d39a25acb8e108c5728f69ee0569fd6b6c46e5ff25eeb"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "dokemon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dokemon --version")
  end
end
