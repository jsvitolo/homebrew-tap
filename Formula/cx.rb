class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.13/cx_0.1.13_darwin_arm64.tar.gz"
      sha256 "b7c5b65ee8c73d3fb0e6f6d019ce4261318dcd03aec74df73f62ed2fb40ba751"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.13/cx_0.1.13_darwin_amd64.tar.gz"
      sha256 "645b649eed942a7f597a9142bfff4dea5920385fb6ba430388791252385f2d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.13/cx_0.1.13_linux_arm64.tar.gz"
      sha256 "75a59258ab35259cc3c97177c18caaf5177755d16cf7373e325503379b2a2831"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.13/cx_0.1.13_linux_amd64.tar.gz"
      sha256 "13f14b906dc6e3aa05f43074641e7fccf253133fe14975492c2222487c171fc8"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
