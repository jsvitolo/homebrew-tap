class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.22/cx_0.1.22_darwin_arm64.tar.gz"
      sha256 "339c5448358eddafdfd7e7ba7d315533c47c0cd91ef352108fbe001139a51175"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.22/cx_0.1.22_darwin_amd64.tar.gz"
      sha256 "f7fb7523d7ed7020848d20fb5984b1bc564fe39924381765899d8b090570c430"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.22/cx_0.1.22_linux_arm64.tar.gz"
      sha256 "76ab70228dee54771d1ad1734abccc6ed0c6da6ea496db941488388f049faad7"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.22/cx_0.1.22_linux_amd64.tar.gz"
      sha256 "1c9db3582ad8aa65a4ff43477981339eb9fb24751bafe8738e75f4e517f68006"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
