class LolaCore < Formula
  desc "Core Lua command plugins for Bunnylol"
  homepage "https://github.com/sidosera/homebrew-lolabunny"
  url "https://github.com/sidosera/homebrew-lolabunny/archive/refs/heads/main.tar.gz"
  version "1.0.0"
  sha256 :no_check
  license "MIT"

  def install
    (share/"bunnylol/commands").install Dir["plugins/*.lua"]
  end

  def post_install
    plugins_dir = Pathname.new(Dir.home)/".bunnylol/commands"
    plugins_dir.mkpath
    
    Dir[share/"bunnylol/commands/*.lua"].each do |plugin|
      ln_sf plugin, plugins_dir/File.basename(plugin)
    end
  end

  def caveats
    <<~EOS
      LolaBunny plugins installed at ~/.bunnylol/commands/
    EOS
  end
end
