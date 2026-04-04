class Renx < Formula
  desc "TUI tool for bulk file renaming"
  homepage "https://github.com/daikazu/renx"
  url "https://github.com/daikazu/renx/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "87dd58afaad3b543e8d6a50d9aa0fdc5c36cb2913677ea1867359eb4f3931e6e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "renx", shell_output("#{bin}/renx --version")
  end
end
