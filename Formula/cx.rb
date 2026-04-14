class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.58/cx_0.1.58_darwin_arm64.tar.gz"
      sha256 "b38d6769c93665b1fc0ef8ad2a37daff5dd51bf1914603ec3c060ca2ef771499"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.58/cx_0.1.58_darwin_amd64.tar.gz"
      sha256 "67dd01abab9511c42efba1696eb79eb98dc3c25f302fe6bc3ecfd6cfe5261c1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.58/cx_0.1.58_linux_arm64.tar.gz"
      sha256 "710d92bc33bab27002750ff5073c1a1bf9d53dbf69c4f35f658ce809fdebef15"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.58/cx_0.1.58_linux_amd64.tar.gz"
      sha256 "829c883f85c56468f996cbdbc9c32554b26d191e51b52e5a480a190d527cf775"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
