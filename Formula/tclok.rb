class Tclok < Formula
  desc "Dependency-free, resize-responsive terminal clock"
  homepage "https://github.com/matheuseabra/tclok"
  url "https://github.com/matheuseabra/tclok/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fcc41b0de57bb5007c525f3c3c6e3d9dbd0f3f511fc443f5946e5355d568b565"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tclok --version")
  end
end
