class MacosCalendarTui < Formula
  desc "Read-only terminal agenda for macOS Calendar"
  homepage "https://github.com/matheuseabra/google-calendar-tui-macos"
  url "https://github.com/matheuseabra/google-calendar-tui-macos/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a2c7bcbf1ba84c80b4fe0dc041a39396d498da90bc0576b31736f7286081c2db"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "macos-calendar-tui 0.2.0", shell_output("#{bin}/macos-calendar-tui --version")
  end
end
