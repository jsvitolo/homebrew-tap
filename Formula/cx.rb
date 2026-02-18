class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.18/cx_0.1.18_darwin_arm64.tar.gz"
      sha256 "9c287db5cb695b66658c1e16772e775213ccd57178aef809d1251f5db8047906"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.18/cx_0.1.18_darwin_amd64.tar.gz"
      sha256 "03302a56c95662abb309ef8639a767590f8e5313b61915d903c13018ff28ab69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.18/cx_0.1.18_linux_arm64.tar.gz"
      sha256 "84621cf986c305fa1a8b6d66e91c25fca31e57c6b52df8a30241f8b9790d23f1"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.18/cx_0.1.18_linux_amd64.tar.gz"
      sha256 "9e5b431d5b68672eb4f94ba940d3cdac18b06dbf23146f5e4a750fbc7fb87880"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
