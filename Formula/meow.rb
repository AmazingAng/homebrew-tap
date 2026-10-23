class Meow < Formula
  desc "Push notifications for AI agents"
  homepage "https://github.com/AmazingAng/meow"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.5/meow_0.1.5_darwin_arm64.tar.gz"
      sha256 "07b19540aadd66de48dd9ae8e9577789e2f288e0c7230398d9e4571936bf36f1"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.5/meow_0.1.5_darwin_amd64.tar.gz"
      sha256 "db3840a79a2e935f27eba3ea118aa9067482bd125f129dd4af78585602033568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.5/meow_0.1.5_linux_arm64.tar.gz"
      sha256 "53a22e24cccfd5e459f64795a4aeb40cb9424732c1982831832f9c1b12d247d5"
    end
    on_intel do
      url "https://github.com/AmazingAng/meow/releases/download/v0.1.5/meow_0.1.5_linux_amd64.tar.gz"
      sha256 "5d86143101af66a593e77826d63bbfaddae7977e0e2592b0f1c414dc3bd857b1"
    end
  end

  def install
    bin.install "meow"
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/meow --version")
  end
end
