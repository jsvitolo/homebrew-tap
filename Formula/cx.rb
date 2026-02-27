class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.34/cx_darwin_arm64.tar.gz"
      sha256 "1b7ffd09ffcc153d255dc501d09117fa1ef1579ca3c9eb6e0ae7d5ce1d8c9602"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.34/cx_darwin_amd64.tar.gz"
      sha256 "9b40ecb59cca9fac3f8dc397d5ec378a2109e4ce09bce11f834b0ec1ddb18ef8"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
