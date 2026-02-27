class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.29/cx_0.1.29_darwin_arm64.tar.gz"
      sha256 "b02558fcf3c71aa3475ad849dc6514297c139184e095e2f42c088f5d001e1eeb"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.29/cx_0.1.29_darwin_amd64.tar.gz"
      sha256 "dd3b1558394eaa791ff80d2c2b162ca5efcca3d33d6dd6b2cb12c46463e4e26a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.29/cx_0.1.29_linux_arm64.tar.gz"
      sha256 "6312efef6a008e6d220976ee6409bb4ac4f3b8b2e582800885f3b0d3183a351c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.29/cx_0.1.29_linux_amd64.tar.gz"
      sha256 "1ded194db90d9f375686ec723209ecf8c3f040e7c46cf3f9e3fd6641eefb311f"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "\#{bin}/cx", "--version"
  end
end
