class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.65/cx_0.1.65_darwin_arm64.tar.gz"
      sha256 "356a70b1a4d47c4e8231ad788f8ef9a2e26d25cbc4857eae25b83de108d9f10f"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.65/cx_0.1.65_darwin_amd64.tar.gz"
      sha256 "a00656faf9e88196d78f3784987839404c97fc5c83c0977d35b6446cd0e8b2a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.65/cx_0.1.65_linux_arm64.tar.gz"
      sha256 "deac89f967310e586b300b7ad168065c2b0a57cd2eb5fc91ab9e3666b3f57abf"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.65/cx_0.1.65_linux_amd64.tar.gz"
      sha256 "14aa8f9f8f8f3d3c5538cf94556bd0e505c8511c65617972b2af9e745e96bf90"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
