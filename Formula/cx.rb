class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.47/cx_0.1.47_darwin_arm64.tar.gz"
      sha256 "3abf3f5139d049b9dce18a886ebe20f0984de82b584f75a00194daef3f6e6f89"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.47/cx_0.1.47_darwin_amd64.tar.gz"
      sha256 "abd7f638b9075925f535715e572bee9ed6481e0dfa5bf995e6f12d9a4388bc9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.47/cx_0.1.47_linux_arm64.tar.gz"
      sha256 "1e284d5f584fe77258d2488b7b887ac8c1ba1a5321f8b8c50a4f7436a3ec6fca"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.47/cx_0.1.47_linux_amd64.tar.gz"
      sha256 "63436fd732890b9e1d3d502d73cc7ad63add0f7b36f865a2ab34cb4218ec3408"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
