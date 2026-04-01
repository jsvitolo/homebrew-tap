class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.52/cx_0.1.52_darwin_arm64.tar.gz"
      sha256 "31e1d191a59a17f93c144a0b933bb592fd707d23fabca3ea7d617082ea499e5f"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.52/cx_0.1.52_darwin_amd64.tar.gz"
      sha256 "f45a76727621385f8dfd1edc203be1cd134038e5964605eb833d545b26bfd006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.52/cx_0.1.52_linux_arm64.tar.gz"
      sha256 "cff1572331a8c84ce2f6dceb9828d7053d3f61f0566aa5c9ccd54247bec45b9b"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.52/cx_0.1.52_linux_amd64.tar.gz"
      sha256 "355473e1efa85ffe92970037c78b5c9bab0db38bb77a5e7b0596165ca5eedf82"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
