class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.56/cx_0.1.56_darwin_arm64.tar.gz"
      sha256 "3cc1c8b30a7caf81bf74350b4def7178cfb05400e6ae16cd03ff165da890d1c3"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.56/cx_0.1.56_darwin_amd64.tar.gz"
      sha256 "c605a5e2ed86b25c0a8997ffc3ad5067ebb0fac532bdc1b69e6697e969c24275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.56/cx_0.1.56_linux_arm64.tar.gz"
      sha256 "fd22c02dc3c564f4d4dd1e4962a7c4aa801287db83e82d6e4fa827bd7e7e5e23"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.56/cx_0.1.56_linux_amd64.tar.gz"
      sha256 "ed5d9db352d097ab3271b56103ec23a0785c60e2df239987ab512bd3d3a442a0"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
