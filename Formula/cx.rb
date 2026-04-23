class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.66/cx_0.1.66_darwin_arm64.tar.gz"
      sha256 "270519a02c71bac05a3b8146d77c895f13f2f7e237c76c99fc654cd0665da19d"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.66/cx_0.1.66_darwin_amd64.tar.gz"
      sha256 "2a622028b9c937dbbbb58bba9239ee2e86dccb3346d6ab84e2ea388ea804f5b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.66/cx_0.1.66_linux_arm64.tar.gz"
      sha256 "13d3e6d54fbeae12db7a0b6f5ee77b7ccacd0e55112f4183ff0b735b5455c345"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.66/cx_0.1.66_linux_amd64.tar.gz"
      sha256 "1f6a5d27c8123ac93a8c1364660c1cd365ecacaecce39ab0a57aa3b9d30fc0ca"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
