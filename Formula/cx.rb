class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.33/cx_darwin_arm64.tar.gz"
      sha256 "ded95ffe2438a6980fe142b2a9e08701975d43a138425b3e06621a2bfbd17215"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.33/cx_darwin_amd64.tar.gz"
      sha256 "9cbff0a7534545c120118e7cf7ee187106238dd86ee152e8b677c9bf9e51fde0"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
