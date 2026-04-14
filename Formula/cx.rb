class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.62/cx_0.1.62_darwin_arm64.tar.gz"
      sha256 "786c3d056222126638a45577fc12eabfd9f09e34429e435e83364af1200b3007"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.62/cx_0.1.62_darwin_amd64.tar.gz"
      sha256 "b66e85d96a7b15a0d1e117726d00913523976e7551b7c11a6529e1f048497bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.62/cx_0.1.62_linux_arm64.tar.gz"
      sha256 "cdc7f0a6b4004e722c49598f18996f3f92efedcd652646b23b4060344f8c4b58"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.62/cx_0.1.62_linux_amd64.tar.gz"
      sha256 "a4e29216dc9adda2a634c5a80f913b9f5065ff83e07f6271bb200c474ad20896"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
