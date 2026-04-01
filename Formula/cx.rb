class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.51/cx_0.1.51_darwin_arm64.tar.gz"
      sha256 "1c20398282f860d0f9fc8e04e1eac5149d396363c1311e766f5bcbb291d207e0"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.51/cx_0.1.51_darwin_amd64.tar.gz"
      sha256 "766d505fa2bb87d7aeafbc267c35155376c03400b5a46202ce1b4e92a82357e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.51/cx_0.1.51_linux_arm64.tar.gz"
      sha256 "27003507b2b6aefe2de01a402dd79a346f9ead5f76eae5c5fdc62ce72d2388fb"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.51/cx_0.1.51_linux_amd64.tar.gz"
      sha256 "253177340b7d6103bed4749a1afb54ef360b55e7924c6981ad82de70dfd20ef9"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
