class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.4/mbtop-v0.1.4-aarch64-apple-darwin.tar.gz"
    sha256 "09b55852d729253d398dd5bd7fd7fd4f9d13149314d5d68ce1d71035fc2cdb02"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.4/mbtop-v0.1.4-x86_64-apple-darwin.tar.gz"
    sha256 "e9fbede9ae0e211cd7241064a832065c3f4fce8fe9befcee158836e9b7f64339"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.4", shell_output("#{bin}/mbtop --version")
  end
end
