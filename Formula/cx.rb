class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.1/cx_0.1.1_darwin_arm64.tar.gz"
      sha256 "c208028073a3b5ba76c650615e83931492419de8b883264b7ebac4f07cad3fe4"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.1/cx_0.1.1_darwin_amd64.tar.gz"
      sha256 "e1512a94275d68aefebbb46e000ee31f03fbbf4de6ed2a53435c8affb4cb9872"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.1/cx_0.1.1_linux_arm64.tar.gz"
      sha256 "d7535e4de6cc690714d8bb7f272c33cd19c3335bbb5f37188fa07fa790cae2c5"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.1/cx_0.1.1_linux_amd64.tar.gz"
      sha256 "6506efef94d671ee1f2459e377c0af898e8ed37f02b8a496e7a9c4b1333ca21d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
