class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.7/cx_0.1.7_darwin_arm64.tar.gz"
      sha256 "8fbcb0f0f167a401f6596f41d46fdbb5eca30c700d6a334f453507ff6f568ae4"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.7/cx_0.1.7_darwin_amd64.tar.gz"
      sha256 "3f1de8c2851da6a0a3e54e2d5678ca10e4bbb79d3fae846d4f093204644ccf08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.7/cx_0.1.7_linux_arm64.tar.gz"
      sha256 "b9d8c85b8fd65f0afeca5c8c58ddfe0105ea282a1e359358adddb0887e574a61"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.7/cx_0.1.7_linux_amd64.tar.gz"
      sha256 "d6253a352bb294f1c2c944d2b5df25e3eb0d4ad1da7f971e425fdfc6cf95e0d5"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
