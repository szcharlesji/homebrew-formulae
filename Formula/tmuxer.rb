class Tmuxer < Formula
  desc "A tmux session starter to quickly launch your personal and work projects with predefined layouts"
  homepage "https://github.com/szcharlesji/tmuxer"
  url "https://github.com/szcharlesji/tmuxer/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2f0740fca7a51e5e97506ed4a724fd61bc41cb272acefabab6a39eedabda2b99"
  license "GPL-3.0-or-later"

  def install
    bin.install "tmuxer.sh" => "tmuxer"
    # Create a symlink for the shorter command name
    bin.install_symlink "tmuxer" => "tmr"
  end

  test do
    system "#{bin}/tmuxer", "--version"
  end
end
