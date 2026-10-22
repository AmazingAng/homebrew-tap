class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.4/meow_0.1.4_darwin_arm64.tar.gz"
      sha256 "a8e4363f9142ee92cb35d7b4fadb0952d3d0d48a8d3002443f230d2028f5f80e"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.4/meow_0.1.4_darwin_amd64.tar.gz"
      sha256 "d35c2dc716c2493254a2ae0bddea34ebfb0b4acdaa22c12dc88d65caebdbef45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.4/meow_0.1.4_linux_arm64.tar.gz"
      sha256 "cb12f84f6205bb15e0eb7b7dd2720626f60ca708734a2cc07ad795214b81698a"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.4/meow_0.1.4_linux_amd64.tar.gz"
      sha256 "61f0b24efe4687a9c733ce0ae13293abb51553eff7c00c93318fa5851e77710c"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/meow --version")
  end
end
