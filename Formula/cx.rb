class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.55/cx_0.1.55_darwin_arm64.tar.gz"
      sha256 "7544fb5081ad6cff95675859cf2b2e8c434caed760cb9ffbd8c921de725b5e16"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.55/cx_0.1.55_darwin_amd64.tar.gz"
      sha256 "7b8f6c4752056fa58e633cac84d6f6fcb95ea720cbbcf9bad890c29fb2f3b0de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.55/cx_0.1.55_linux_arm64.tar.gz"
      sha256 "d60d5136a5319e9fce6ab9d034e29e3f75b936427b0620e5329e69cf8cfdf512"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.55/cx_0.1.55_linux_amd64.tar.gz"
      sha256 "1ae6790348e6661bec7c68f3a1f118a3febe6cfdb6cd2a75848d8f9c41285b36"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
