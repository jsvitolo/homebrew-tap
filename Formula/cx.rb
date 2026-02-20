class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.21/cx_0.1.21_darwin_arm64.tar.gz"
      sha256 "e4a7f8b799ea64ec5d4b122698455a09e6946308fce1f3bcf0943a531de8df5c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.21/cx_0.1.21_darwin_amd64.tar.gz"
      sha256 "743dcc3c3e029d3b47809bb7ca83292172883faf1160aa861295a2d7f5db3a41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.21/cx_0.1.21_linux_arm64.tar.gz"
      sha256 "b5797cd9de98a97331dc0ff42e77df7474e7745a3230bef36fa9059efe0ae714"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.21/cx_0.1.21_linux_amd64.tar.gz"
      sha256 "6898cf467fc457b74bdfa26d7d5190288ee1c1ec504e634d118474207ce0cf17"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
