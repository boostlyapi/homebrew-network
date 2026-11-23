class Magic8bot < Formula
  desc "Cryptocurrency trading bot"
  homepage "https://github.com/egutierrz/magic8bot"
  url "https://github.com/egutierrz/magic8bot/releases/download/v0.1.0/magic8bot-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "5fb373a50aa609efd927e9e49f6f28a344ec46af08896b3e82a30adf0288bd0f"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "magic8bot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magic8bot --version")
  end
end
