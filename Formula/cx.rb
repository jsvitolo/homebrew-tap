class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.31/cx_darwin_arm64.tar.gz"
      sha256 "63a539e1e3cd2d7374c0634a354e4c38a03bcc576e8615b50d982cde96835938"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.31/cx_darwin_amd64.tar.gz"
      sha256 "f44b5220b06d89000c083da5e11815fcaf56f6a5cdef04aa00f88c3039b2d1a9"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx", "--version"
  end
end
