class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "0.1.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.31/elwood-macos-x64.zip"
      sha256 "be088d1c20549ea3dd423495c6de93c975fc29d9ff76536fd8c275bb9e4fbc51"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.31/elwood-macos-x64.zip"
      sha256 "be088d1c20549ea3dd423495c6de93c975fc29d9ff76536fd8c275bb9e4fbc51"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.31/elwood-linux-arm64.zip"
      sha256 "ea5ea1765d942a544b7af81a6aada2ff883f86dc9813d99a1417f305044b28dd"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.31/elwood-linux-x64.zip"
      sha256 "0003291284b8a55cfd0525e78d1fa544eeb8d8f1572b1db63ec9714e6be2ab68"

      def install
        bin.install "elwood"
      end
    end
  end
end