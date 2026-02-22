class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.23/cx_0.1.23_darwin_arm64.tar.gz"
      sha256 "a3e4fbb33d9c92afa8ca55dea6c12196fe5ef628f1b34dc1a7356bf2de94ce93"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.23/cx_0.1.23_darwin_amd64.tar.gz"
      sha256 "78c997810a810f091e10643431938b3193a6789e072944445f3e4dcbae7e239d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.23/cx_0.1.23_linux_arm64.tar.gz"
      sha256 "48fa9f2a807c21dd905d262dc317c75e5c4adffb4a489e78980ab64beef1290d"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.23/cx_0.1.23_linux_amd64.tar.gz"
      sha256 "72656fb82b74bea77150da275ae7d095dbc5f2159227316deefe98b5074ada0d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
