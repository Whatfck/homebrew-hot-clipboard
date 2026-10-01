class HotClipboard < Formula
  desc "Ergonomic macOS clipboard CLI bridging terminal and NSPasteboard"
  homepage "https://github.com/Whatfck/hot-clipboard"
  url "https://github.com/Whatfck/hot-clipboard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e6d08c277003ca48f640ed6444fd018b5d5ae1ad571e260b194aaaa144d66ceb"
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
