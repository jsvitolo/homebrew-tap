class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.20/cx_0.1.20_darwin_arm64.tar.gz"
      sha256 "849ecdcebe41e0ca85e5d6943df13e3a6df239aa9d434a08a02a6644407a24f7"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.20/cx_0.1.20_darwin_amd64.tar.gz"
      sha256 "5d6ca3cd7b31e090a0c355bd5ed6317a45fced6049c2680e984dc6b6edf3b99a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.20/cx_0.1.20_linux_arm64.tar.gz"
      sha256 "3c8ca7bec8d48bff53c3a32f025f2fb625c868031b6ca7b812ac428fff7aed20"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.20/cx_0.1.20_linux_amd64.tar.gz"
      sha256 "dd6b8c69ed9a4ba18500cbbda10905c18a5be768a8e9d1e9c1877980f441b5cc"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
