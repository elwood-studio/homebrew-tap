class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "0.1.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.36/elwood-macos-x64.zip"
      sha256 "d6559a9be3ee4f5bfb21e477678da6981b075d0148311c8cf15aa7ae8db6bc53"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.36/elwood-macos-x64.zip"
      sha256 "d6559a9be3ee4f5bfb21e477678da6981b075d0148311c8cf15aa7ae8db6bc53"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.36/elwood-linux-arm64.zip"
      sha256 "5ac304ffdbffddb7b3fb29d69cfdf1739061dd664e5ee07fc48e52aa2a84a57b"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.36/elwood-linux-x64.zip"
      sha256 "b975a85b52f746545424332bfae9c21e49484fcfaa685b61ac94966bc73d737a"

      def install
        bin.install "elwood"
      end
    end
  end
end