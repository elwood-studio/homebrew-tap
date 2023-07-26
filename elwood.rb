class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "0.1.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.37/elwood-macos-x64.zip"
      sha256 "6d9aa1975c5948eb10f881740f400cba03c68d3eb29dae24db46b51ad36782f5"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.37/elwood-macos-x64.zip"
      sha256 "6d9aa1975c5948eb10f881740f400cba03c68d3eb29dae24db46b51ad36782f5"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.37/elwood-linux-arm64.zip"
      sha256 "d650b1f49d74fc4fe854ac2dc3e00add4f86937a85eb2518c8828f71e296c298"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elwood-studio/cli/releases/download/0.1.37/elwood-linux-x64.zip"
      sha256 "7e1ec98c6a200415500406df05aed7caa37facba2acbaafa0927e7373d1f90ff"

      def install
        bin.install "elwood"
      end
    end
  end
end