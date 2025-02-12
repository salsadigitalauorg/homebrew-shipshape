# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipshape < Formula
  desc "Golang CLI tool to run checks/audits on your systems"
  homepage "https://github.com/salsadigitalauorg/shipshape"
  version "1.0.0-alpha.1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.0/shipshape-Darwin-x86_64.tar.gz"
      sha256 "4d35b16ee6d9997de13dd87e7c814c787437b0a2f90652ffbc9efd3a93e46b8f"

      def install
        bin.install "shipshape"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.0/shipshape-Darwin-aarch64.tar.gz"
      sha256 "6cbf6b2731d5808063fb45e7c8f7fb3bf9bf983bcfdb90347984923cac567b40"

      def install
        bin.install "shipshape"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.0/shipshape-Linux-x86_64.tar.gz"
        sha256 "c2eea39f8fa43bcb82e3e224f4fe2b4520b7abd9d958c978445c1e785aaab718"

        def install
          bin.install "shipshape"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.4.0/shipshape-Linux-aarch64.tar.gz"
        sha256 "8e7d58a589c2075927fa78579ca2a71735846b929b896578b3575e352f00db6b"

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
