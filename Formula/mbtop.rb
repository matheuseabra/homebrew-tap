class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.5/mbtop-v0.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "fe79f7f8f949b45af79f2669cf284aabf11d96e42a05212e813870e6326290a7"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.5/mbtop-v0.1.5-x86_64-apple-darwin.tar.gz"
    sha256 "6cb662af815a344c2b012fbcde003d4f5f71e8c54f56cac42d2f7595e056c0e6"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.5", shell_output("#{bin}/mbtop --version")
  end
end
