class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.45/cx_0.1.45_darwin_arm64.tar.gz"
      sha256 "7621339b3752a98006c9df679c207ef5b2310916cd13c388ab3261bfa61512d6"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.45/cx_0.1.45_darwin_amd64.tar.gz"
      sha256 "63b39076af593e938a6c4fcca73188b503e69cabdbea082e129fe9b8a21bbcca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.45/cx_0.1.45_linux_arm64.tar.gz"
      sha256 "83c642c28125c0e8b04edaf1aecdd61024a658b5eb15c35062a66a1bf502950d"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.45/cx_0.1.45_linux_amd64.tar.gz"
      sha256 "cf07bb44904dea3d35f5eaa9c2177d30a2b13f880f099932ac033dd231c9c802"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
