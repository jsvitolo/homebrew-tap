class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.61/cx_0.1.61_darwin_arm64.tar.gz"
      sha256 "9acd679740c04691d70a3239034967cdeb13c1e6cddac4799bb4f4b80389105e"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.61/cx_0.1.61_darwin_amd64.tar.gz"
      sha256 "2adc134574bc9b9459e5f69051b8cfef2bd8e46a36813d48cc222f7ae827b832"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.61/cx_0.1.61_linux_arm64.tar.gz"
      sha256 "a884690c4d206ae8b1d621b022107517759ef03bf7b62edb1c6bfb3f86432e6c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.61/cx_0.1.61_linux_amd64.tar.gz"
      sha256 "ba2f61f2c16a57b2dbc066127f1f8becfcee4a107af5a53ad334218be56ec9a0"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
