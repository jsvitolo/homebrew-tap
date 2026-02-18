class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.16/cx_0.1.16_darwin_arm64.tar.gz"
      sha256 "1551ffc32a116f7f33b2f39ec096665ae9152a9904757e71544295b62f01246c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.16/cx_0.1.16_darwin_amd64.tar.gz"
      sha256 "8dbe8bd1177fb37acac62ef05173e94a9011d9335debb3f92d874369baccfa1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.16/cx_0.1.16_linux_arm64.tar.gz"
      sha256 "8f4a5289e58744d43e8ee64433cdb8c70c7afb6d41c7a057fcd7399bd14e1e68"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.16/cx_0.1.16_linux_amd64.tar.gz"
      sha256 "940edeb9168b223e82514a7797839ba8498e2bdc91dcab7d08aabe3727d60335"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
