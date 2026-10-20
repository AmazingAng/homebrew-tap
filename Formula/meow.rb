class Meow < Formula
  desc "Push notifications and quick replies for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.0/meow_0.1.0_darwin_arm64.tar.gz"
      sha256 "f65786a642f0d18a90b4f041f1f8a3d2617d10f83a2deedda454e3d394dab403"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.0/meow_0.1.0_darwin_amd64.tar.gz"
      sha256 "f7204de3c2687f2b5df9c1dbc3667f000c63fe14aa6e1fb1b4036e4bb290aa0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.0/meow_0.1.0_linux_arm64.tar.gz"
      sha256 "8420b270b69efce721b8bbb929920424efed8dab51923bd34bb51676006f1524"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.0/meow_0.1.0_linux_amd64.tar.gz"
      sha256 "cfd99a73116e4e3137d79d076396cf562c6c8c4b086f2a6612e5fd48f808824c"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/meow --version")
  end
end
