class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.26/cx_0.1.26_darwin_arm64.tar.gz"
      sha256 "6674ea938521f754221f879ad5a112a6509c7da2f528287c2dfd7f0235b8de20"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.26/cx_0.1.26_darwin_amd64.tar.gz"
      sha256 "c0e70b9aead3aef474f326f16f88d43240e96a2cff2df1c1a16fea392bce799d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.26/cx_0.1.26_linux_arm64.tar.gz"
      sha256 "edf9b9ea0d0b60a3e1b23b8ca28b523404f28d7960f0499e12cfb94b4c9053a7"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.26/cx_0.1.26_linux_amd64.tar.gz"
      sha256 "1738950acb17b15bfdfc832282ead8e7d47ea3067d5bfa71477e3c4378a5e6f6"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
