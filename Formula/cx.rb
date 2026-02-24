class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.25/cx_0.1.25_darwin_arm64.tar.gz"
      sha256 "73f4d46a28d0df979e3461b6d232e6f2887347fa557753ed8490ff236f82d6f4"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.25/cx_0.1.25_darwin_amd64.tar.gz"
      sha256 "e7c9d49f8b5b731802ebfd3c043e54d03230a43cf10b3a92c9ec8a39c95fee54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.25/cx_0.1.25_linux_arm64.tar.gz"
      sha256 "92c45518fccb72f5d57f1a244b942c7010fae852fab467aa015757b5cc6b3c8c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.25/cx_0.1.25_linux_amd64.tar.gz"
      sha256 "48725abb6949c8f3859ce3f7b5681ea0c20fbd6aeaddc37ed7f512cb74e662d3"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
