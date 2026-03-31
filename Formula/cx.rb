class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.50/cx_0.1.50_darwin_arm64.tar.gz"
      sha256 "0e571b8224af3c8a0269ab2846f219166b8990ca40608f484ab2b86b005f54c5"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.50/cx_0.1.50_darwin_amd64.tar.gz"
      sha256 "fa2f4ed411a7498a0d03c3a3b6dc2f695ff37cbceec16b8599275f0f52de4d1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.50/cx_0.1.50_linux_arm64.tar.gz"
      sha256 "0288dbceea66a869bc638b3c70cd8d56a6c8565bf3d0e9626c10a65cf9b17b3b"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.50/cx_0.1.50_linux_amd64.tar.gz"
      sha256 "3c371d39dff959a34714aee8a5cb85abd4b8a51358334b07c7df73c31d8856d8"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
