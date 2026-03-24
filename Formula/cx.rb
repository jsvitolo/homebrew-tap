class Cx < Formula
  desc "AI-powered development platform with task management, semantic memory, and agent orchestration"
  homepage "https://github.com/jsvitolo/cortex-releases"
  version "0.1.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.46/cx_0.1.46_darwin_arm64.tar.gz"
      sha256 "2efc4092099ab9a81cd6ac328544902ba06a0cadf6c5bd03528ee49f8d831642"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.46/cx_0.1.46_darwin_amd64.tar.gz"
      sha256 "7c288b5d64592a08fa31b166f7142e1f22bf7013d325cc1d01e0ac60a1f2cddf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.46/cx_0.1.46_linux_arm64.tar.gz"
      sha256 "a58a8b5eb97b2a23fea665c4772565585fa9265cc3d6299964a75b335560799c"
    else
      url "https://github.com/jsvitolo/cortex-releases/releases/download/v0.1.46/cx_0.1.46_linux_amd64.tar.gz"
      sha256 "e73b8afa4b527ebe691fe25aa80504a7406d10c312457a5dd61c0fa9390b81cd"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cx --version")
  end
end
