class Renx < Formula
  desc "TUI tool for bulk file renaming"
  homepage "https://github.com/daikazu/renx"
  url "https://github.com/daikazu/renx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a0ec9b37d0a8398a5ad141a16a77f54ddee6a8408bb23e676637d9600a247961"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "renx", shell_output("#{bin}/renx --version")
  end
end
