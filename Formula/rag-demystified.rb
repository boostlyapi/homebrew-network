class RagDemystified < Formula
  desc "RAG pipeline toolkit"
  homepage "https://github.com/raulsanchezdiaz/rag-demystified"
  url "https://github.com/raulsanchezdiaz/rag-demystified/releases/download/v0.1.0/rag-demystified-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "6ea10653204d5114c3b9d08e536c14326ed6edf7be49ce24b2168ec12c4a8a63"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "rag-demystified"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag-demystified --version")
  end
end
