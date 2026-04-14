class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.57"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.57/cx_0.1.57_darwin_arm64.tar.gz"
      sha256 "123264cba184398b6ba8b38b9abee0a3fe02f81a399202765b88d77bbb915267"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.57/cx_0.1.57_darwin_amd64.tar.gz"
      sha256 "dbb34d4c8c409882bc3eab5d35e0721ea8e32c0dd36964515d42b7df81696b8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.57/cx_0.1.57_linux_arm64.tar.gz"
      sha256 "91f6fe305301bfb7425716e6df9c2314cacbb5e013dbc04b04dd166533a445d8"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.57/cx_0.1.57_linux_amd64.tar.gz"
      sha256 "3b191085db9382533fecd011e828c83e0ba9bff397795b2d0cf745fcc57ac6d1"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
