class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "0.1.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.44/elwood-macos-x64.zip"
      sha256 "afd756babdfc9eba684949b9b104da13fb67fe88c6296dac934b00e60dade94a"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.44/elwood-macos-x64.zip"
      sha256 "afd756babdfc9eba684949b9b104da13fb67fe88c6296dac934b00e60dade94a"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.44/elwood-linux-arm64.zip"
      sha256 "c1594e422f4b6666113d759bde3ff5c4d1a0e4ee1728dc5fbc1a6a9055fc25f8"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.44/elwood-linux-x64.zip"
      sha256 "fe035ee6db7ffe30e353a8d9f152a226b488db0022c61d4d2afd1fcb13b8793b"

      def install
        bin.install "elwood"
      end
    end
  end
end