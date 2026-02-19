class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.19/cx_0.1.19_darwin_arm64.tar.gz"
      sha256 "d2fbd94703fdf4cb06e6511b2465dde8fd00f802196b53d53e51696fc34ed938"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.19/cx_0.1.19_darwin_amd64.tar.gz"
      sha256 "a20ef39b267b4aa8285ba6955297cb52c5d7e90736a753d0070fbf4acbebd3c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.19/cx_0.1.19_linux_arm64.tar.gz"
      sha256 "bf2a4cfc70f32658ce630ee3463534d2af05474d3ac50e97c9e27c152c45dfd3"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.19/cx_0.1.19_linux_amd64.tar.gz"
      sha256 "5be29dc695199eb9afa894d17a0b04f9e3d161a74295ea64207cb686d79dc50f"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
