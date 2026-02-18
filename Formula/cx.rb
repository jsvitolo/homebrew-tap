class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.15/cx_0.1.15_darwin_arm64.tar.gz"
      sha256 "c5821318c39cdeda7927f2d522819909c75fa5ac45771b5bc227343ae32e3208"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.15/cx_0.1.15_darwin_amd64.tar.gz"
      sha256 "a334a1db0f615722d4db47c2f623b75c2dac3db5a3669d4f8ae885640608f220"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.15/cx_0.1.15_linux_arm64.tar.gz"
      sha256 "af6eaf9c07dcefb14aec672c13d28eaabea57f2936f840cd15ad7343081d1d5f"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.15/cx_0.1.15_linux_amd64.tar.gz"
      sha256 "3aa6e1d197e7c2446683490ce10ce7bf7b7babacf00b5815200db29791fc2660"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
