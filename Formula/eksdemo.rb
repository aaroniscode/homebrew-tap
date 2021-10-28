# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksdemo < Formula
  desc "A toolkit to quickly and easily demo EKS with opinioned application installs."
  homepage "https://github.com/aaroniscode/eksdemo"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.1/eksdemo_0.0.1_Darwin_arm64.tar.gz"
      sha256 "12dbc67227aa643c8de5516f0837a92a21eb8b8c8f33991f450eaaa48d71c94e"

      def install
        bin.install "eksdemo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.1/eksdemo_0.0.1_Darwin_x86_64.tar.gz"
      sha256 "755a12027ebda4195ac496d171d13cf246d1dc23847b1115add3f99a142a4c2d"

      def install
        bin.install "eksdemo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.1/eksdemo_0.0.1_Linux_arm64.tar.gz"
      sha256 "096d62ae98bb353c5294d5deb5df2df3d032d1fd86a1fcb852dab71aac79a50f"

      def install
        bin.install "eksdemo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aaroniscode/eksdemo/releases/download/v0.0.1/eksdemo_0.0.1_Linux_x86_64.tar.gz"
      sha256 "c94bc18afd776bff8aa439db7ef85397a7c230e72c119cc66313072281dd459d"

      def install
        bin.install "eksdemo"
      end
    end
  end

  depends_on "eksctl"
end
