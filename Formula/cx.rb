class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.49/cx_0.1.49_darwin_arm64.tar.gz"
      sha256 "0f205c63aab86b1460dabe32789c44b35012c33502007e4de2a4354174825235"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.49/cx_0.1.49_darwin_amd64.tar.gz"
      sha256 "878527f84298fb10316311723c5a231e2ca6d8879f05bb1f6b817750e0e8ab5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.49/cx_0.1.49_linux_arm64.tar.gz"
      sha256 "3395eb1262217a2b2f82e775cc9486b572748d27fd1851ad88852236b48e8c64"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.49/cx_0.1.49_linux_amd64.tar.gz"
      sha256 "2291636fc16bb392709fd5bceb29637f8181e81ead96363d4fe0be9519525311"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
