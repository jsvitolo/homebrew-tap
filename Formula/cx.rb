class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.38/cx_0.1.38_darwin_arm64.tar.gz"
      sha256 "c1dfc14743db576681503ed500871db6635cdd29e467687577b2f2686e460ec0"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.38/cx_0.1.38_darwin_amd64.tar.gz"
      sha256 "8f6433b3efe2d117dd751b728ebd352e5c973089ed1e19c985db79750312e489"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.38/cx_0.1.38_linux_arm64.tar.gz"
      sha256 "e495b30525beb5387de7acf180ffff22f481846813dbb6703d88dc5b5b6eb477"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.38/cx_0.1.38_linux_amd64.tar.gz"
      sha256 "159fe10c23860969a8ad787cc8347f69c8116c2cff983ac1cbc56f273a5a3364"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
