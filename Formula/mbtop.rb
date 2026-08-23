class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.1/mbtop-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "712d457fcf836111a6e7b2215619b3134a8bb768d4983ccb6eae40a636667641"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.1/mbtop-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "7842bdae0b9751ca3fd5e22553bb520d04b999f919bf4a2f31e9521c61387602"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.1", shell_output("#{bin}/mbtop --version")
  end
end
