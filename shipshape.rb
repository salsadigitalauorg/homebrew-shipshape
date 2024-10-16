# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipshape < Formula
  desc "Golang CLI tool to run checks/audits on your systems"
  homepage "https://github.com/salsadigitalauorg/shipshape"
  version "1.0.0-alpha.1.2"

  on_macos do
    on_intel do
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.2/shipshape-Darwin-x86_64.tar.gz"
      sha256 "11c3ba6227aab951dd071d518dd86f533f446ec23d764418d905a1f638a5060f"

      def install
        bin.install "shipshape"
      end
    end
    on_arm do
      url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.2/shipshape-Darwin-aarch64.tar.gz"
      sha256 "a418bd4f7596689b7fbd9814346f5a737071bb3b4b1106353d2da21c56db2d50"

      def install
        bin.install "shipshape"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.2/shipshape-Linux-x86_64.tar.gz"
        sha256 "3b6a1e179702fb6b7854690be495e90111bcd4eaad42f287f246e21fd0f35ae0"

        def install
          bin.install "shipshape"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/salsadigitalauorg/shipshape/releases/download/v1.0.0-alpha.1.2/shipshape-Linux-aarch64.tar.gz"
        sha256 "7d8cf68daaedb5d85c49e5f30c16b9dc873639e96e40ccbef6f2ec4162e823ad"

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
