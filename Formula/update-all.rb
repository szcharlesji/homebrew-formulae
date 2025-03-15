class UpdateAll < Formula
  desc "Script to update various package managers and tools"
  homepage "https://github.com/szcharlesji/update-all"
  url "https://github.com/szcharlesji/update-all/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f77c0531753289d956d90eb09ac5499598e99a8ddf0c9acd892bdaad28bb3a65"
  license "GPL-3.0-or-later"

  def install
    bin.install "update-all.sh" => "update-all"
    # Create a symlink for the shorter command name
    bin.install_symlink "update-all" => "ua"
  end

  test do
    system "#{bin}/update-all", "--version"
  end
end
