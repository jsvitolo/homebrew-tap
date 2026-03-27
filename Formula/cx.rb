class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.48/cx_0.1.48_darwin_arm64.tar.gz"
      sha256 "fdadbd801c98499794a83f0ab68a2c880b5544359c08ec47ef8f2cd89958a395"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.48/cx_0.1.48_darwin_amd64.tar.gz"
      sha256 "943ac2379e58490cfb36559548f432bfdc778514e35273caccb78de7f35920bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.48/cx_0.1.48_linux_arm64.tar.gz"
      sha256 "33f6e01776f3bc5cdfd6effa2f2229edce68fb13db311537680285fa1a1ea317"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.48/cx_0.1.48_linux_amd64.tar.gz"
      sha256 "94696d46ec4757d4d622d9512e49f81d96b56862ca2f760b4bb2704c93fe8f9a"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
