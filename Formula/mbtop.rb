class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.3/mbtop-v0.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "a95b30143e489729edcb8facb5e5ff2f209be2050949174a2f2f67b67d2c9bdf"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.3/mbtop-v0.1.3-x86_64-apple-darwin.tar.gz"
    sha256 "5a90a98175eca7b70ab863216fd420c614b659bbed4ac9bb5d37f86f32b13593"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.3", shell_output("#{bin}/mbtop --version")
  end
end
