class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.8/cx_0.1.8_darwin_arm64.tar.gz"
      sha256 "41de2f5f2f408e40aeab07973b1412c5c53a0e594f36f906f9450f8a257263b5"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.8/cx_0.1.8_darwin_amd64.tar.gz"
      sha256 "dbd17da35e86fade9b0ac0f8498b7b692b7319a4446e030f3988da7006d24326"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.8/cx_0.1.8_linux_arm64.tar.gz"
      sha256 "4e0443e156d2a697cd8996cfa52d1de9bc15bdf5e4662867b95b36c63874c04a"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.8/cx_0.1.8_linux_amd64.tar.gz"
      sha256 "36bf14bab81eef9fed8c997c19b99f78b8f3f83c8487dde2a310b78bc498e997"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
