class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.6/cx_0.1.6_darwin_arm64.tar.gz"
      sha256 "2fcfcc5c1215ec000aa295100266839bbc084e6f9287425224aedce4bc384e53"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.6/cx_0.1.6_darwin_amd64.tar.gz"
      sha256 "40b2990b5cd23b5c9ae51d40e5f84e5fe9aff80a4d338f69fa259a1441df49d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.6/cx_0.1.6_linux_arm64.tar.gz"
      sha256 "0f570a86c6d4e749bc9ab4ece5f5b711ae6a19d4b650ad97c5b10111c8a1bfb9"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.6/cx_0.1.6_linux_amd64.tar.gz"
      sha256 "c54114b1698d6710093423af73fb7df2b6c5d4115e57c15cb8b81816f51a62fc"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
