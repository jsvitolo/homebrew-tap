class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.14/cx_0.1.14_darwin_arm64.tar.gz"
      sha256 "9d68515d862d83f860dcae2864b460efe7db1d5ec656c53fb0c6f05187223122"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.14/cx_0.1.14_darwin_amd64.tar.gz"
      sha256 "a1091d199aa5c95a2652867159c1dc6d113b5ac540fe8598ebbd46847ddafbbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.14/cx_0.1.14_linux_arm64.tar.gz"
      sha256 "22289f1206741b8714ec6fa0a54be33ade3cae2ea351d1685b5431dac7cd3f70"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.14/cx_0.1.14_linux_amd64.tar.gz"
      sha256 "8a6db8a4a3cb6d4a40d439af44c5ae863fcac589f1c3075618767e3d90f69de3"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
