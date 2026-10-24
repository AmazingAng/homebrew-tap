class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.6/meow_0.1.6_darwin_arm64.tar.gz"
      sha256 "0c4d2930edef665354c96ddd942818d68fb290943c8cc8b3f6aa981817b73e28"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.6/meow_0.1.6_darwin_amd64.tar.gz"
      sha256 "6bd4b4b100067cc872febc1154d2bd0fdf0a85dfabd955bdd4a5344bff82e115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.6/meow_0.1.6_linux_arm64.tar.gz"
      sha256 "5dd7cb0b4676621786187f5a9e16abc3e774dc06f3d2b27e6da7f889c7f861e7"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.6/meow_0.1.6_linux_amd64.tar.gz"
      sha256 "f50b661ac515dc2aa94523efc84bd68e435072649bb921d5c7b8ab7de24836dc"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/meow --version")
  end
end
