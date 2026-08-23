class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.2/mbtop-v0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "42718e242ea318d7ec2716e85a0cb93ddb5bdc54c3ce100e213dee6e881f774f"
  else
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.2/mbtop-v0.1.2-x86_64-apple-darwin.tar.gz"
    sha256 "f6cdebf81087fa9b30e3b562fbfbf39563b02b36cbc6c3c06d0969e4f0039843"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.2", shell_output("#{bin}/mbtop --version")
  end
end
