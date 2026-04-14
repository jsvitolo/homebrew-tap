class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.59/cx_0.1.59_darwin_arm64.tar.gz"
      sha256 "ee9cad8718f874ab04bc362a4afb3f3e02a9ebd6759238e47459a074c0f24cf8"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.59/cx_0.1.59_darwin_amd64.tar.gz"
      sha256 "2a9816a0ecc6eb289ac6bb28816f1c71e874644a54f44d3731fbd70bf434e371"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.59/cx_0.1.59_linux_arm64.tar.gz"
      sha256 "843274c8d8fe2fc3c1d380b5616b6060d11e2da43a44ded835d2228b1e220c70"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.59/cx_0.1.59_linux_amd64.tar.gz"
      sha256 "7757db275aaec11e9069c81000fb8d3f1546f488f027901b6d01830c9d9d5d63"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
