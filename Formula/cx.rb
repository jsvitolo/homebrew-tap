class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.37/cx_0.1.37_darwin_arm64.tar.gz"
      sha256 "18b8398575451400df2f5820cfcda348261d57932361ece5cf77c0abf15d16f6"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.37/cx_0.1.37_darwin_amd64.tar.gz"
      sha256 "ee38ee14cb0dfb9ad49d332ca150444a8af9c619baf3f2f216455bb306c8ac46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.37/cx_0.1.37_linux_arm64.tar.gz"
      sha256 "9a88d9570b0793f2b657cb856ef0915af10a68e4c56c7a5a7b4851e5a96879c3"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.37/cx_0.1.37_linux_amd64.tar.gz"
      sha256 "90160d2d1433e56da6fd1916d29ae2c400af2dd6de382ae1ae51807dab686c89"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
