class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.6/mbtop-v0.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "c6de646da4f0c3b5d7950a31374e39b3b3bca469193b84c49614d5cd37cc88c8"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.6/mbtop-v0.1.6-x86_64-apple-darwin.tar.gz"
    sha256 "faf6db8a0098476d1516612068831d631a339258d0d90f5f616008b9ff8ce51b"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.6", shell_output("#{bin}/mbtop --version")
  end
end
