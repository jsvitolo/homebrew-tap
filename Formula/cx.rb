class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.43/cx_0.1.43_darwin_arm64.tar.gz"
      sha256 "8e15be3a36d273ec00c117f7eb63433412bca9a4047b5a5ffb5c2d06bc91ea3e"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.43/cx_0.1.43_darwin_amd64.tar.gz"
      sha256 "61994200232ff13e30b0b43696f17984d22817b92a607806ea18ab7c96734fe8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.43/cx_0.1.43_linux_arm64.tar.gz"
      sha256 "66ac0c0101a24db08fb4b8033dcff4ea0b705252feff9bef63eb61102e782521"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.43/cx_0.1.43_linux_amd64.tar.gz"
      sha256 "0945202d67ad2fb32325d21813a1d817dbaca80525667469ac0af1a248c85a97"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
