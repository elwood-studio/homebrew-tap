class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "0.1.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.29/elwood-macos-x64.zip"
      sha256 "4f64d64349c9a61b6ecdfa2aeac96fedaac339941acc2af43dd507db5a32f966"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.29/elwood-macos-x64.zip"
      sha256 "4f64d64349c9a61b6ecdfa2aeac96fedaac339941acc2af43dd507db5a32f966"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.29/elwood-linux-arm64.zip"
      sha256 "f3cce6f2348d16ec9e7f481335531621b8d9c37675263682c2f953463f1e7c08"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.29/elwood-linux-x64.zip"
      sha256 "b5afe15243d841a01d626456305ee16c93c3097f246a7d5e132f3499e437f8ea"

      def install
        bin.install "elwood"
      end
    end
  end
end