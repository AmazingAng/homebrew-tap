class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.3/meow_0.1.3_darwin_arm64.tar.gz"
      sha256 "da168c5aeec43fb1ba2c40d7a321a0010e6e0f28e8bbfd2040795baa60f860cc"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.3/meow_0.1.3_darwin_amd64.tar.gz"
      sha256 "8468d21c90abd676287c1cd27f8e79d184fa028f01221b782fc6e2d4c4b60677"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.3/meow_0.1.3_linux_arm64.tar.gz"
      sha256 "4c85e9300651d4f3943d4bc5b646615b0a71a85d38569de9acc1225922b60fd0"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.3/meow_0.1.3_linux_amd64.tar.gz"
      sha256 "6478112140bb38de8bdfcc317590d5b0218bee7dbce3171999996ec38d103169"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/meow --version")
  end
end
