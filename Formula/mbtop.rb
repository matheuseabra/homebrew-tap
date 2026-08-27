class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.7/mbtop-v0.1.7-aarch64-apple-darwin.tar.gz"
    sha256 "5df039cf2bbc42b0dc653f43eaa142aafd5301885c1272cb25a15853625d41dc"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.7/mbtop-v0.1.7-x86_64-apple-darwin.tar.gz"
    sha256 "87bae067c58db55512e3a10b8c53756499eee6a44b54e8eaace9f222bed694d2"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.7", shell_output("#{bin}/mbtop --version")
  end
end
