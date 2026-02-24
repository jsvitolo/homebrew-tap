class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.24/cx_0.1.24_darwin_arm64.tar.gz"
      sha256 "5de5b26ada7aaa94d31f7042f72dc5a7f4b9ef2aaab3e28d68042b490aeb5ab7"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.24/cx_0.1.24_darwin_amd64.tar.gz"
      sha256 "1564fbb375a0bbd3c912475024e8f1cc61c299bb76d5f2d006f2165b2460e292"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.24/cx_0.1.24_linux_arm64.tar.gz"
      sha256 "9a0d5e5befbe2ecd08dae48fbbcadce075aa36a5b4a8e50a21baabb2ef067ca0"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.24/cx_0.1.24_linux_amd64.tar.gz"
      sha256 "b0a024b2ff08271bfc5d1776e03323fd8a2156b04dca10582ad1a080a14ae244"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
