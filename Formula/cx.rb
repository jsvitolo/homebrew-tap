class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.11/cx_0.1.11_darwin_arm64.tar.gz"
      sha256 "41bcc8474c6f0bdbcacf03a2b077b0a033480fcd86197b85a7a899aeb853736d"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.11/cx_0.1.11_darwin_amd64.tar.gz"
      sha256 "f66a84538571164d4e9c34f5fce2bd9390dc0451d39c1e10cb74e1ff0394c532"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.11/cx_0.1.11_linux_arm64.tar.gz"
      sha256 "dfcef7144b01e092328ad50d8d952dc5629bdbea8490b3904bd1ddcb33149d38"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.11/cx_0.1.11_linux_amd64.tar.gz"
      sha256 "58e0e0a52abcfc2e0593e741560d40b485af62c81444dc99b6df0c22f80c90e5"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
