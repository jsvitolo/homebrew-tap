class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.27/cx_0.1.27_darwin_arm64.tar.gz"
      sha256 "ddf9fc08c9c3636b6376130646d1c210fd4db98c0846cb2c7a5efa6ffadb780b"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.27/cx_0.1.27_darwin_amd64.tar.gz"
      sha256 "5821ab8ea90595ee6d8c9d1a0d9dbdcedb8a9e1f1cbdb1d1cbc45d3f941216cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.27/cx_0.1.27_linux_arm64.tar.gz"
      sha256 "ef64a9b88db2836eb9a8e78684a53979cc37d75cfa147ac260f7ca428eb9ed4b"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.27/cx_0.1.27_linux_amd64.tar.gz"
      sha256 "9ef7f7ed966b6a4c5b6fd08c15e0c346443e09b274510b9ee5517ca0878ac7af"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
