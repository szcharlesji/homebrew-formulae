class UpdateAll < Formula
  desc "Script to update various package managers and tools"
  homepage "https://github.com/szcharlesji/update-all"
  url "https://github.com/szcharlesji/update-all/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5c66a11d4506d5ce1c13f68121d886705370d4692d182a49bb41dbf9288e6c83"
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
