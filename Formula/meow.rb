class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.10/meow_0.1.10_darwin_arm64.tar.gz"
      sha256 "e0643663adf47891d92fc642628f0f95090782d399e19862d6e76f2e347bada3"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.10/meow_0.1.10_darwin_amd64.tar.gz"
      sha256 "fa23b768a42b9652ca6b2b321445f1702113e60b43d9b497b1123c9175dda578"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.10/meow_0.1.10_linux_arm64.tar.gz"
      sha256 "365070dd1f39731fb0f4edf8d1b3dc1ccd7564ce15409560ccc45297a492b15e"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.10/meow_0.1.10_linux_amd64.tar.gz"
      sha256 "676af10a280054cd30e6afcf5995f3ed5d6c69273a268f2405a60eb06cc36792"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.10", shell_output("#{bin}/meow --version")
  end
end
