class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.41/cx_0.1.41_darwin_arm64.tar.gz"
      sha256 "abbd7e29d57b8b853f12ffa5d7237e01e84c769e3276313aeb52a4fd33b32d73"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.41/cx_0.1.41_darwin_amd64.tar.gz"
      sha256 "0540b27bf07bbeb766db4cfa97761996e471867c53d0cf6c54b85fc81181e849"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.41/cx_0.1.41_linux_arm64.tar.gz"
      sha256 "1f3bfef0975fd003a751d4e2aec70946955424a8093b68d204509e7eb5d32981"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.41/cx_0.1.41_linux_amd64.tar.gz"
      sha256 "d20fe0feba2413244c5384eef67d0f0e8a17942da7089a47e79e3ea5f177b0f4"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
