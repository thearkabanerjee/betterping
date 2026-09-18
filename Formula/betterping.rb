class Betterping < Formula
  desc "A nicer way to look at ping"
  homepage "https://github.com/thearkabanerjee/betterping"
  url "https://github.com/thearkabanerjee/betterping/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "betterping"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/betterping 2>&1", 1)
  end
end