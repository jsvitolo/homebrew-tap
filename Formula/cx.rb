class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.30/cx_darwin_arm64.tar.gz"
      sha256 "4c42cbd204bee147f4dbdeae102755f53f61d0012dcb786fdbb60ea3cee78d7f"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.30/cx_darwin_amd64.tar.gz"
      sha256 "25ff454dc5311fbdf4c98a5e527284b66edbb04637c29f835b76c864e0a71cc9"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx", "--version"
  end
end
