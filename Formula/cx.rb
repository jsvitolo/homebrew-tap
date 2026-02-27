class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.32/cx_darwin_arm64.tar.gz"
      sha256 "edf552d0ba151497f571c5601ca0e6812b83ff2da38a03ad2550fb3d21a59676"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.32/cx_darwin_amd64.tar.gz"
      sha256 "f5d272b6bd5346446c556297b251dc71a042334fdfc3c4c963b81970f5d44ff8"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx", "--version"
  end
end
