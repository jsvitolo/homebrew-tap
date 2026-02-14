class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.2/cx_0.1.2_darwin_arm64.tar.gz"
      sha256 "3e3938dbe50b8d88c426eaf5d633c55e52d369e42c2667a62f7587002d98abd3"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.2/cx_0.1.2_darwin_amd64.tar.gz"
      sha256 "305a3718ccf920a3856e9edcf0646f587805d803d664f0f23f3ff2664331455d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.2/cx_0.1.2_linux_arm64.tar.gz"
      sha256 "e4755fd71f30bf5ee75d7f6bffcf406c59484aca48aa22533ebe27577555f2f1"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.2/cx_0.1.2_linux_amd64.tar.gz"
      sha256 "2721034621b06cdeaafb55aee4118833e9d1a03c27d081575c13bb2b0d2736cc"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
