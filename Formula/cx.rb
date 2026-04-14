class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.64/cx_0.1.64_darwin_arm64.tar.gz"
      sha256 "722b81d98f49be0b86c42233b32f68183be700e2b49f3d134b8ec7d3052354ff"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.64/cx_0.1.64_darwin_amd64.tar.gz"
      sha256 "a7ef836aeeccd4cdbb05fb3efcf82be33f69551f11bee47a4d397257481ee52d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.64/cx_0.1.64_linux_arm64.tar.gz"
      sha256 "52ae7e32237a6ce87eb0be76b68a6d600ea08819040b3da8a6197a89ffcf14bf"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.64/cx_0.1.64_linux_amd64.tar.gz"
      sha256 "2fefda48ee601e23dc269aa3332b077d4fcba974590c935d03b8767421a5e3b1"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
