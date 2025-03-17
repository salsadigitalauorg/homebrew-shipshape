# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipshape < Formula
  desc "Golang CLI tool to run checks/audits on your systems"
  homepage "https://github.com/salsadigitalauorg/shipshape"
  version "1.0.0-alpha.1.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.5.1/shipshape-Darwin-x86_64.tar.gz"
      sha256 "98a6c917284cdae8c5ea5052bac197abec4f7ea286a53155a0ec27760495e14b"

      def install
        bin.install "shipshape"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.5.1/shipshape-Darwin-aarch64.tar.gz"
      sha256 "87110b56ac41d980fc6f93d5af203575325eaa8d9efaaa458e0075c7332a9445"

      def install
        bin.install "shipshape"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.5.1/shipshape-Linux-x86_64.tar.gz"
        sha256 "c8f3e4158db85c78ab8c8b32a5568ff2594b823e006145b729d44670903dbf4e"

        def install
          bin.install "shipshape"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.5.1/shipshape-Linux-aarch64.tar.gz"
        sha256 "e2c6a94799d898d5d22f6f01356ae9b5c4ebcb71849a869f4f7ed0fdd22be883"

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
