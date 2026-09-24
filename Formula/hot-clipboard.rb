class HotClipboard < Formula
  desc "Ergonomic macOS clipboard CLI bridging terminal and NSPasteboard"
  homepage "https://github.com/Whatfck/hot-clipboard"
  url "https://github.com/Whatfck/hot-clipboard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9096e9b501eeb5908dfc5d4f0e632b98495aab7626f6d9e76c7e31975ad6bdbf"
  license "MIT"
  head "https://github.com/Whatfck/hot-clipboard.git", branch: "develop"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Hot Copy", shell_output("#{bin}/hc --help")
    assert_match "Hot Paste", shell_output("#{bin}/hp --help")
  end
end
