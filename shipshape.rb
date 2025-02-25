# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipshape < Formula
  desc "Golang CLI tool to run checks/audits on your systems"
  homepage "https://github.com/salsadigitalauorg/shipshape"
  version "1.0.0-alpha.1.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.2/shipshape-Darwin-x86_64.tar.gz"
      sha256 "535f8e43596b71e7fcac2c89fe56be1bf45c39dfb4a4cb9db1d4c97286c6b37f"

      def install
        bin.install "shipshape"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.2/shipshape-Darwin-aarch64.tar.gz"
      sha256 "ebe16c35006b6828a82dc50b6e9192bfdd8274e10efd84d718f576fa176b613d"

      def install
        bin.install "shipshape"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.2/shipshape-Linux-x86_64.tar.gz"
        sha256 "1f7723948ba7c068f58c8182acc90693e16c683e738767b39f50a4a508aec6c4"

        def install
          bin.install "shipshape"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.2/shipshape-Linux-aarch64.tar.gz"
        sha256 "ec0d828e097091c47d091be15e0620efd6b5d4592966284205e4825b97cbf3dc"

        def install
          bin.install "shipshape"
        end
      end
    end
  end

  test do
    system "#{bin}/shipshape version"
  end
end
