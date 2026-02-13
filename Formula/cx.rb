class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.0/cx_0.1.0_darwin_arm64.tar.gz"
      sha256 "b669b6f0e821cfea90aad9108ae6d0c151f3cde8b0640339572a6ffe6ede4481"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.0/cx_0.1.0_darwin_amd64.tar.gz"
      sha256 "e4647f944d036a30f85d25fa4e3dcec96016f39f9b1829530703f8f7698ad3e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.0/cx_0.1.0_linux_arm64.tar.gz"
      sha256 "9eb4fc484a5300e6fd1d67988becf01a38c844f3d1dde235594ebbad1106598f"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.0/cx_0.1.0_linux_amd64.tar.gz"
      sha256 "87165c983ced22892c5dcb482578a919c5c1c7947928594ece29efe80a62ef5e"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
