# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipshape < Formula
  desc "Golang CLI tool to run checks/audits on your systems"
  homepage "https://github.com/salsadigitalauorg/shipshape"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v0.2.1/shipshape-Darwin-x86_64.tar.gz"
      sha256 "810a3d213c65d96a0919f69eb29aa16b1066ece947b231005ec7845d5ddb7055"

      def install
        bin.install "shipshape"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v0.2.1/shipshape-Darwin-aarch64.tar.gz"
      sha256 "14d6eff746295f5f541b981296fceafa4e8243e8d7b3a562e14d2fcf90fffb3b"

      def install
        bin.install "shipshape"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v0.2.1/shipshape-Linux-aarch64.tar.gz"
      sha256 "4bc127a02697900e28a210c6e0ce41f856ce66d71715303079f916e292c130c8"

      def install
        bin.install "shipshape"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v0.2.1/shipshape-Linux-x86_64.tar.gz"
      sha256 "7d31d7d5f85013c746f6b42ed8404e28139972e14e48b269da8063508ee8d70e"

      def install
        bin.install "shipshape"
      end
    end
  end

  test do
    system "#{bin}/shipshape version"
  end
end
