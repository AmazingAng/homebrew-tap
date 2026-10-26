class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.7/meow_0.1.7_darwin_arm64.tar.gz"
      sha256 "f73edb48ed0f4ced1171db6c6f987f4f3a1bf427ab81ef65ab520b9a9cda3564"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.7/meow_0.1.7_darwin_amd64.tar.gz"
      sha256 "1e6406a99935fa4109a037672d70175151b1c1d381b98cb97231c79b93425992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.7/meow_0.1.7_linux_arm64.tar.gz"
      sha256 "be91d779c1e6fe2308fe9bec819869e2ae81e524d12fbc60ab745c0101e8b012"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.7/meow_0.1.7_linux_amd64.tar.gz"
      sha256 "05f46a92d6a1e50ab8de6a8967663cbedca91b7b6697213c95842146f3af205e"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.7", shell_output("#{bin}/meow --version")
  end
end
