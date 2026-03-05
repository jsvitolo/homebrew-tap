class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.42/cx_0.1.42_darwin_arm64.tar.gz"
      sha256 "7bc84d0600bace306ebb1244674972fe2e135ad265875f9310416f483967ee68"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.42/cx_0.1.42_darwin_amd64.tar.gz"
      sha256 "7de688216ac580ff4c80041782448d386e3a63ccf4197288c4e3c70ed39c370d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.42/cx_0.1.42_linux_arm64.tar.gz"
      sha256 "a9116f3713078e544cf5411a86b42ca15263c79e7af4d7ebbca930da648a20c9"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.42/cx_0.1.42_linux_amd64.tar.gz"
      sha256 "353295bb72564a64423255e2d69d62729ba71d7da3ddb9ebdda08d7d4d9b6bce"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
