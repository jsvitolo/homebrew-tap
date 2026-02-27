class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.35/cx_0.1.35_darwin_arm64.tar.gz"
      sha256 "f937c1cd67ee2bbfd348a628f866c3260d9fd20483a2119e0a297884ed624d17"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.35/cx_0.1.35_darwin_amd64.tar.gz"
      sha256 "f42592ba0ac3058c81425c1e17d714c73a486e396daa678619c834e24ec42176"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.35/cx_0.1.35_linux_arm64.tar.gz"
      sha256 "7bb572e376c71b917d1f3826ac5476962fbc86f86fb99131380da562b2fa42b1"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.35/cx_0.1.35_linux_amd64.tar.gz"
      sha256 "5e051f3cc7a44b3186633f2faed63e76eb7fb61e3d7e35ce5f2e9b67d0d172bb"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
