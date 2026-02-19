class LolaCore < Formula
  desc "Core command plugins for Bunnylol"
  homepage "https://github.com/sidosera/homebrew-lolacore"
  url "https://github.com/sidosera/homebrew-lolacore/archive/refs/heads/main.tar.gz"
  version "0.0.1"
  sha256 :no_check
  license "MIT"

  head "https://github.com/sidosera/homebrew-lolacore.git", branch: "main"

  livecheck do
    url "https://github.com/sidosera/homebrew-lolacore/releases/latest"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  def install
    (etc/"bunnylol/commands"/name).install Dir["plugins/*.lua"]
  end

  test do
    assert_predicate etc/"bunnylol/commands"/name, :directory?
  end
end
