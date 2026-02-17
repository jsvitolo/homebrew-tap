class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.9/cx_0.1.9_darwin_arm64.tar.gz"
      sha256 "929192fff489de532d9fc7815067216fcf92322e91d640186db6d8189d026ce4"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.9/cx_0.1.9_darwin_amd64.tar.gz"
      sha256 "0316d46b8988bb2490d22b645e419596c8c8bf44dea9c8222de6c016d76421c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.9/cx_0.1.9_linux_arm64.tar.gz"
      sha256 "eeea4b2e98e7c956aef3cc3fd3fdf3545555ba10c2442c5657c957ebe06b902a"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.9/cx_0.1.9_linux_amd64.tar.gz"
      sha256 "cee71bccdccc5a8de056c60d3c53584754760d4fa743b1dce95cf4508f1ac587"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
