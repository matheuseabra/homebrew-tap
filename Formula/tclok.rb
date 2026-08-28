class Tclok < Formula
  desc "Dependency-free, resize-responsive terminal clock"
  homepage "https://github.com/matheuseabra/tclok"
  url "https://github.com/matheuseabra/tclok/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "0460877b134ff80ec5fa19c39890451780a5b314bcacd5db9e7975e23b28e76f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tclok --version")
  end
end
