class Cx < Formula
  desc "AI-first development platform with task management and semantic memory"
  homepage "https://github.com/jsvitolo/cortex"
  version "0.1.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.41/cx_darwin_arm64.tar.gz"
      sha256 "f8672fe42cc0611f06132979ee0d2656788d226539af5dd10dd1c4ab43841b40"
    end
    on_intel do
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.41/cx_darwin_amd64.tar.gz"
      sha256 "b88b7ffcc16334f7680ef2d57c84d01bbb3cd7ce0dff5e857dd487c70235e75f"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx", "--version"
  end
end
