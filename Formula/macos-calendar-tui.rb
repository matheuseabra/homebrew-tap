class MacosCalendarTui < Formula
  desc "Read-only terminal agenda for macOS Calendar"
  homepage "https://github.com/matheuseabra/google-calendar-tui-macos"
  url "https://github.com/matheuseabra/google-calendar-tui-macos/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "20215c20deb3bc1be4f3fc25d9fbae80ab3ecc82312d900c01e27f223061e403"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "macos-calendar-tui 0.2.1", shell_output("#{bin}/macos-calendar-tui --version")
  end
end
