class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.2/meow_0.1.2_darwin_arm64.tar.gz"
      sha256 "d4a22acc1e39f2361a0791f20d316c3868a31ea9717d3660b0ede907802ca8d2"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.2/meow_0.1.2_darwin_amd64.tar.gz"
      sha256 "f735dbbaf3e0ca155cee7f991027b4487ca73ab0b444ca759260d360fb50bd41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.2/meow_0.1.2_linux_arm64.tar.gz"
      sha256 "8c2a88369f43a9adec7a7bd8bacad5e290d54722714f222ec95c2c1a858dd304"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.2/meow_0.1.2_linux_amd64.tar.gz"
      sha256 "720a29767ff8521f0dbfb49235aa1f96e106a86225e42bf491e8b174711f6922"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/meow --version")
  end
end
