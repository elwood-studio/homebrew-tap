# typed: false
# frozen_string_literal: true

class Elwood < Formula
    desc "Elwood CLI"
    homepage "https://elwood.studio/docs/cli"
    version "0.1.18"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.18/elwood-macos-x64.zip"
        sha256 "a9e163f0ccfa945edd721696fccb9a700798ee1017c2a8cdd887968d52c27adf"
  
        def install
          bin.install "elwood"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.18/elwood-macos-x64.zip"
        sha256 "a9e163f0ccfa945edd721696fccb9a700798ee1017c2a8cdd887968d52c27adf"
  
        def install
          bin.install "elwood"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.18/elwood-linux-arm64.zip"
        sha256 "5fe4ae51261c06120d6e06c338e5742c5ed0d4143b30de1e69c40100a782a300"
  
        def install
          bin.install "elwood"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.18/elwood-linux-x64.zip"
        sha256 "ea3bf1815ac21633ed33bcdd90c180121bdc96330d3c0173dcc0f0fbde0f41da"
  
        def install
          bin.install "elwood"
        end
      end
    end
  end