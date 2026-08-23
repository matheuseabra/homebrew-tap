class Mbtop < Formula
  desc "Tiny, fast system monitor for terminal dashboard panes"
  homepage "https://github.com/matheuseabra/mbtop"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.0/mbtop-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "64ff63520dfb278ded6f96fdf1c3ac8d5d8f0fbe9dd282c8dbbaa927a1ba247b"
  end

  on_intel do
    url "https://github.com/matheuseabra/mbtop/releases/download/v0.1.0/mbtop-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "6277760d7356957eeb11901f1db5aa5cb0b9ed527954785da7072c38b65df597"
  end

  depends_on :macos

  def install
    bin.install "mbtop"
  end

  test do
    assert_match "mbtop 0.1.0", shell_output("#{bin}/mbtop --version")
  end
end
