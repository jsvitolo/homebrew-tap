class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.10/cx_0.1.10_darwin_arm64.tar.gz"
      sha256 "5080f41439ee5a2450149721683af124a7929c8d37fbcfe79b4bd96e0975f7c6"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.10/cx_0.1.10_darwin_amd64.tar.gz"
      sha256 "b20cdc89acf0adcaa7b866ec4ab6c02a351ca3bd9d7106a4ec17c2c3401ce3c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.10/cx_0.1.10_linux_arm64.tar.gz"
      sha256 "e0049b2aa77941b0d939adc9017b874ec5496903ae14287865a867b528e53496"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.10/cx_0.1.10_linux_amd64.tar.gz"
      sha256 "37c595f42aa1e4f822d8c9a9c632e07e10c851be19d17347f181c0aa8fc199f0"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
