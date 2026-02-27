class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.39/cx_0.1.39_darwin_arm64.tar.gz"
      sha256 "fb3be27ce7c415fe0132990a7511984550264b46048532c0c243172b1438a135"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.39/cx_0.1.39_darwin_amd64.tar.gz"
      sha256 "fc569bddce6cae6b1e4f5833d7d05c5993146a5c333db3006c692807b59b1607"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.39/cx_0.1.39_linux_arm64.tar.gz"
      sha256 "b983ebab6928f15b3b16155cfc2d78a990f826803b47cf38961e43ee8ef6f90d"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.39/cx_0.1.39_linux_amd64.tar.gz"
      sha256 "24196fbe45d1c0671759df07070fe1a1c60370cc7e431044fac9d7ade7789aef"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
