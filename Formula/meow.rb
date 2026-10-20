class Meow < Formula
  desc "Push notifications and quick replies for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.1/meow_0.1.1_darwin_arm64.tar.gz"
      sha256 "f2c58c0dcf0a64c1371adc32a3f55101c0521aaf51939fd810dade4d152edf0b"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.1/meow_0.1.1_darwin_amd64.tar.gz"
      sha256 "b5ee8eadf6b351ab8f38448fe3c18380e84926f7812c9992ff8fa7debdebed28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.1/meow_0.1.1_linux_arm64.tar.gz"
      sha256 "2642fabefac1a534f723d9160a9d52092cf7167150bd3ad2aa73cf944b088c84"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.1/meow_0.1.1_linux_amd64.tar.gz"
      sha256 "5b625110cf8f04bb46c96aee621c41984c30ec8108ecda4648b9c567ca331876"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/meow --version")
  end
end
