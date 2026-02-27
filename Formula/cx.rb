class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.36/cx_0.1.36_darwin_arm64.tar.gz"
      sha256 "9910143328b3ef44027860ac7e516c385d083df8e34f44e5fa7ae3731c57ed70"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.36/cx_0.1.36_darwin_amd64.tar.gz"
      sha256 "b23fef8ef76fcf7b15305c7b478f52fcb9a830e00f13eb32ecf9f83f521669ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.36/cx_0.1.36_linux_arm64.tar.gz"
      sha256 "378bc9c0cde0044397aeac4a9d92f8812f80a84d6eaf94366f01932eed9802b3"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.36/cx_0.1.36_linux_amd64.tar.gz"
      sha256 "65ca4d2f7ea43d21dc4d76d11fd5b184f23d5e5daf707711c9d56b13d86ab1c7"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
