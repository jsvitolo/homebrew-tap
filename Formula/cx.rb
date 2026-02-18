class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.17/cx_0.1.17_darwin_arm64.tar.gz"
      sha256 "e8af20e4d00baab3ed497076557e84254efc712f4ded16f977d49f01e238cab6"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.17/cx_0.1.17_darwin_amd64.tar.gz"
      sha256 "43e3bcf581d5c68d9159e7e7df48d824b8fd89e4336ba5625ea781ce2ce23cca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.17/cx_0.1.17_linux_arm64.tar.gz"
      sha256 "ddaa6164e466509c4a17ba612800000f24974d809e097f46459ef4a722006cb5"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.17/cx_0.1.17_linux_amd64.tar.gz"
      sha256 "7844f940e7b9f26e628bef31c10d9c439cc7938c2f0a9dee1456fb4a0e5573c8"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
