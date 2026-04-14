class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.60/cx_0.1.60_darwin_arm64.tar.gz"
      sha256 "48fcd7b7332caea91cedd461e3f5e85a9b58a39132d9142592952dfb42777187"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.60/cx_0.1.60_darwin_amd64.tar.gz"
      sha256 "9925063e7420775a0a15d13799245390d3963037971234f0f143b836567da955"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.60/cx_0.1.60_linux_arm64.tar.gz"
      sha256 "b1cefbb954eaf031a1d6837d9c112d924338468b19ae620894bfee79955e6bfe"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.60/cx_0.1.60_linux_amd64.tar.gz"
      sha256 "c0288822f7e7f989ea205cfc118f88dac5ec140a5770c272b8331414273211fb"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
