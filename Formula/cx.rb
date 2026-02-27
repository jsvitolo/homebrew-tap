class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.28/cx_0.1.28_darwin_arm64.tar.gz"
      sha256 "720bfd7365a576f0ceea61168583d3c12fc6c0b57f50013c6cd7f2171b804936"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.28/cx_0.1.28_darwin_amd64.tar.gz"
      sha256 "56e4dc7a364e8f092b66e407db4bac4d1a17541ff62a836f08be3fd3a62d8484"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.28/cx_0.1.28_linux_arm64.tar.gz"
      sha256 "86fa656861ecd2eeb12ac3958407eddf85baf32f0f7da593ea50fb9425bc524f"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.28/cx_0.1.28_linux_amd64.tar.gz"
      sha256 "1cde521eb2d08e6e57cfa0d54ce0431c7216a3172b7b1e29376644b4eaad2439"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
