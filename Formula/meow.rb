class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.8/meow_0.1.8_darwin_arm64.tar.gz"
      sha256 "fd3572a52929a7231d9686e501f534fd61f3510cb9f5fa4e19bfd591f13100cd"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.8/meow_0.1.8_darwin_amd64.tar.gz"
      sha256 "baa0d8bac9f5e3a95463cf286b60183b5a1168938d95c76eb62cce899fe48607"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.8/meow_0.1.8_linux_arm64.tar.gz"
      sha256 "cfbdea0c67d873552c53b155f9b3868ba495352667d28a915a6cad8f9eadfef3"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.8/meow_0.1.8_linux_amd64.tar.gz"
      sha256 "fbd395432b8bd77daa64e37eeb6a8e9c77bb2d2a3e643572301e158892305bdc"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.8", shell_output("#{bin}/meow --version")
  end
end
