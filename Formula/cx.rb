class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.3/cx_0.1.3_darwin_arm64.tar.gz"
      sha256 "f852e57e0357477eb311fb3ce77084ddfcf88f0cde1de878462965f9fa583ddf"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.3/cx_0.1.3_darwin_amd64.tar.gz"
      sha256 "def8f3f2142c4a4765615a97744184ec89221941b763f5eb6db5721a51869af3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.3/cx_0.1.3_linux_arm64.tar.gz"
      sha256 "e2bb33ec02cb6e2c30edc00eff52e1861d18872a46205318a9484ee2fac12981"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.3/cx_0.1.3_linux_amd64.tar.gz"
      sha256 "ede7f2eeaa105282d28345bc7b26b700ff8df1e9d39a3aba9234503c452207ba"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
