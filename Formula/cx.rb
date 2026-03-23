class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.44/cx_0.1.44_darwin_arm64.tar.gz"
      sha256 "24efdf4d715aeb4fd38c7ab5ca793c7e4b2e4795a30deeaaf548ccb5b9dd7825"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.44/cx_0.1.44_darwin_amd64.tar.gz"
      sha256 "75d2aac78931b21fc4d418dec9fa681b4df41283d8e9dab52dc8dde6b28d2db2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.44/cx_0.1.44_linux_arm64.tar.gz"
      sha256 "6c3fbb39ac84b9b71816e2061076040cee736d5a606d302b956d67c7041f672c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.44/cx_0.1.44_linux_amd64.tar.gz"
      sha256 "6962b79de75ad1cb4c1d708ba43022b0ce65854db61a99c02df8dc25d0ffe58b"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
