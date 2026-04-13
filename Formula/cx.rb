class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.54/cx_0.1.54_darwin_arm64.tar.gz"
      sha256 "f0aa87ce486c932eb38622aee46f690186ba58117844c95e19cec70ca8363665"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.54/cx_0.1.54_darwin_amd64.tar.gz"
      sha256 "cfbbd0463efaad4d80f7dc1e0a38cf33bc77153aa4050488411183eb0202e078"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.54/cx_0.1.54_linux_arm64.tar.gz"
      sha256 "bd9a8b9024f51c43bc2e61ef8974edf47c6f040ca9533b4b4ff112c195d0a093"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.54/cx_0.1.54_linux_amd64.tar.gz"
      sha256 "2446b7663c9bd5a98d52e3fbc922650ee68ab6300163b9648778b1767b1d1b75"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
