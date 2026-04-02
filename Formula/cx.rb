class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.53/cx_0.1.53_darwin_arm64.tar.gz"
      sha256 "d45c08cc2e23ad8923e989d3596ccf130871748298050467b8d5a839125fdeec"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.53/cx_0.1.53_darwin_amd64.tar.gz"
      sha256 "c27ec9778295e5b8914d8e7ea9ea7047c2bc2d364b15303c89b5ce2464229de6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.53/cx_0.1.53_linux_arm64.tar.gz"
      sha256 "2260f5a68a79887f3fe60c49f10f476cce2e0b9e4a9d934c0b622317cfd20aa1"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.53/cx_0.1.53_linux_amd64.tar.gz"
      sha256 "bee32416b78586eec7060b380fcfa7f4ec3fe815c1349973cac27aacca82e2c6"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
