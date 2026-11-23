class VulcanSql < Formula
  desc "SQL analytics engine"
  homepage "https://github.com/maxwildcat/vulcan-sql"
  url "https://github.com/maxwildcat/vulcan-sql/releases/download/v0.1.0/vulcan-sql-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "f2c5362af279655594106b1affef08a680881e8367d87731196f0de2ee949ae9"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "vulcan-sql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vulcan-sql --version")
  end
end
