class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.35/cx_darwin_arm64.tar.gz"
      sha256 "c341d498d337ff051a17483cdf8bdd92d7e36a7ff993f76e02f45d078b21b750"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.35/cx_darwin_amd64.tar.gz"
      sha256 "70710e5bda7afe333adef45f3021b95e758f16389c7728df34f51a9076438533"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
