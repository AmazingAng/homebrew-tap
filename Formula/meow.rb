class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.9/meow_0.1.9_darwin_arm64.tar.gz"
      sha256 "17dfc1ac98b730c562c04935162b2ee0e4ebbdef92a45c944e9ddd2891d01d2d"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.9/meow_0.1.9_darwin_amd64.tar.gz"
      sha256 "8ffff7fe69a721702d55cb03305f4ef72e3f31c4b68cf36b0325a0a0685865ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.9/meow_0.1.9_linux_arm64.tar.gz"
      sha256 "ec3d3dfede9c2c119ec81e0effab0ae054d105403c13605f0583050104b69d32"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.9/meow_0.1.9_linux_amd64.tar.gz"
      sha256 "1420c5c037b3fd984cf47c406ff73722c05bb250dc6db689dac748d1105189a8"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.9", shell_output("#{bin}/meow --version")
  end
end
