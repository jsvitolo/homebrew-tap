class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.63/cx_0.1.63_darwin_arm64.tar.gz"
      sha256 "a4037638cdd4a2da9bb858785c9e0e847dbb35a5f150e5c443da9bf69f923cf6"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.63/cx_0.1.63_darwin_amd64.tar.gz"
      sha256 "4c68bbb52f16832d8991d790e97224a808fc97c981ba24c88311f25af9bf44b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.63/cx_0.1.63_linux_arm64.tar.gz"
      sha256 "aa39406b3ae0e5e28df1afdbaad75f9f12e96c63a7c1a7e80b3d415514bcc2f4"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.63/cx_0.1.63_linux_amd64.tar.gz"
      sha256 "fd6dc8f606632a10400a35435b173a687a9a6b2a19c7d31ba687e310a6930810"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
