class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.40/cx_0.1.40_darwin_arm64.tar.gz"
      sha256 "b5c3359078c9c8f8c28e69d914ecf90095223e8742e39a49976711f588e5c083"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.40/cx_0.1.40_darwin_amd64.tar.gz"
      sha256 "0fc400eeb913355286d5215d6283d4782df47227c9a2528eefbefef1723a7713"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.40/cx_0.1.40_linux_arm64.tar.gz"
      sha256 "62964537e8c918b3a036c253e89c0c507f896131d77eb59c3e4c470c35e6b76d"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.40/cx_0.1.40_linux_amd64.tar.gz"
      sha256 "a38f5c34d30a320215aa5e124c1a6a111a3393578b19ea2ca9d423c6424cd1d3"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
