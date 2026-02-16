class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.5/cx_0.1.5_darwin_arm64.tar.gz"
      sha256 "17f290276963e9ccdf5c01351636368d71ef8ff064dd904b24fb5cad0ac1b2d0"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.5/cx_0.1.5_darwin_amd64.tar.gz"
      sha256 "98227fe45b09fdfd7176448240dd5800860ef8b36885bebdf39914e9b72b2178"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.5/cx_0.1.5_linux_arm64.tar.gz"
      sha256 "4efe73d18478e2897229d5994e041f349495fd8b771daf2978f6d28662188ac3"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.5/cx_0.1.5_linux_amd64.tar.gz"
      sha256 "6bdf38f02dcef010f834d7f06621869ce296d57f7708eb346e69551f1667d74d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
