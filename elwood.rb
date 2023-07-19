class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "0.1.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.35/elwood-macos-x64.zip"
      sha256 "765602d217e33e957782b068b9fae4b3a3d3fab75585d7c4920e8634f99baae5"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.35/elwood-macos-x64.zip"
      sha256 "765602d217e33e957782b068b9fae4b3a3d3fab75585d7c4920e8634f99baae5"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.35/elwood-linux-arm64.zip"
      sha256 "4d3cc0e3b507554be3fe536a6ee094a095ef8e5b82252be2b37faade80de0304"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.35/elwood-linux-x64.zip"
      sha256 "46edc66b4e9578b0183cd065eaa66f47847e1f4efb9a163ea9cfe4bf30412f5a"

      def install
        bin.install "elwood"
      end
    end
  end
end