class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.67/cx_0.1.67_darwin_arm64.tar.gz"
      sha256 "f6cdd66d433b0ba74bb00db7422504a94af9925704a75b75e149c3faed6ad782"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.67/cx_0.1.67_darwin_amd64.tar.gz"
      sha256 "1f6fae21f4b190abca5e81188163f60ac87cebc1626b8668ab2ef04dc1e839eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.67/cx_0.1.67_linux_arm64.tar.gz"
      sha256 "c7f050b794820072fe3e29468fd477286daaca0e41dda7bbbf2cb77167d1e513"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.67/cx_0.1.67_linux_amd64.tar.gz"
      sha256 "cf2d0d867f0bd3a5a6da0e64a01ee2e2ddcd8f73ffbeafb6e4e67dc64e56e6e9"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
