class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.12/cx_0.1.12_darwin_arm64.tar.gz"
      sha256 "1d8770b9808d7d1f1b33b59ebb54a68d85fdaac4e3cecd8d8e69b6fd3cf2dd83"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.12/cx_0.1.12_darwin_amd64.tar.gz"
      sha256 "8a98a2d114540186efbe5e5fea6a469b6c93d59f22d24a8661e3aeb13cce3bea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.12/cx_0.1.12_linux_arm64.tar.gz"
      sha256 "eb3584d87db0fe8ed09dbd5a5732929be9bd473ea51e8dbf88eafbfa6a80a80e"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.12/cx_0.1.12_linux_amd64.tar.gz"
      sha256 "a4437490253388557c0dfeede76a9ffb8e47c308ddeb793f990931c35f22da43"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
