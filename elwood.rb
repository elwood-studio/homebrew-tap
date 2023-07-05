class Elwood < Formula
    desc "Elwood CLI"
    homepage "https://elwood.studio/docs/cli"
    version "0.1.25"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.25/elwood-macos-x64.zip"
        sha256 "d7ac40eeec60e696ff2792d41e895386a0502ad6d4f4c28785a506a881557b81"
  
        def install
          bin.install "elwood"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.25/elwood-macos-x64.zip"
        sha256 "d7ac40eeec60e696ff2792d41e895386a0502ad6d4f4c28785a506a881557b81"
  
        def install
          bin.install "elwood"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.25/elwood-linux-arm64.zip"
        sha256 "7af9670c25c674e49bcbe44417b5846745671066be12e263fa4915f8af4e1377"
  
        def install
          bin.install "elwood"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/elwood-studio/cli/releases/download/0.1.25/elwood-linux-x64.zip"
        sha256 "890658a4e3b45fefc0ff7ec7acc3a3468f6dadf62357439f2d5959e027de1552"
  
        def install
          bin.install "elwood"
        end
      end
    end
  end