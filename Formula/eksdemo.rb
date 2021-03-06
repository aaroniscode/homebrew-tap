# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksdemo < Formula
  desc "A toolkit to quickly and easily demo EKS with opinioned application installs."
  homepage "https://github.com/aaroniscode/eksdemo"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.9/eksdemo_0.0.9_Darwin_arm64.tar.gz"
      sha256 "a951e2a06b5c80824a8c3a0bf0c2be43e88b47cf9c42ccc4d65e9264639d04d4"

      def install
        bin.install "eksdemo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.9/eksdemo_0.0.9_Darwin_x86_64.tar.gz"
      sha256 "241b2cf262130c31014b8c4646b44333f583befc8de90a904862432de2c945e7"

      def install
        bin.install "eksdemo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.9/eksdemo_0.0.9_Linux_arm64.tar.gz"
      sha256 "8215adfebed2cd3c23896bda1bdceadea6a6b673dc4fbe29294c3ccd49773c03"

      def install
        bin.install "eksdemo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.9/eksdemo_0.0.9_Linux_x86_64.tar.gz"
      sha256 "988ea1e0e475636cfcffbc58246a4c3a603cd989e429b47fe61cc6c54f3c9388"

      def install
        bin.install "eksdemo"
      end
    end
  end

  depends_on "weaveworks/tap/eksctl"
end
