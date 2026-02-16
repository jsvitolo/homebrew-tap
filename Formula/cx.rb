class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.4/cx_0.1.4_darwin_arm64.tar.gz"
      sha256 "af7ac99f30aabee65f9c93d92ad3da4e7d689abeceed913ab57ee9c64c739d43"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.4/cx_0.1.4_darwin_amd64.tar.gz"
      sha256 "70c3d32843cfba37f4cc84fd40662985ba696875164fbec7110997c8ac3ba169"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.4/cx_0.1.4_linux_arm64.tar.gz"
      sha256 "ac53a83286f16e7736d0fe3adbfdb494aa7da9d0276010d66aeabb472707bcd0"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.4/cx_0.1.4_linux_amd64.tar.gz"
      sha256 "dfd072cc5c9eed4dd9602a660b25d3262c48b70ecfd0a78b5f8cdc4ff12637f5"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
