# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RafttEdge < Formula
  desc "Manage your development environment with ease - edge version, might be unstable"
  homepage "https://raftt.io/"
  version "56.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v56.0.0/raftt_56.0.0_darwin_amd64.tar.gz"
      sha256 "4ebad283a5c44d952c151d5b051e803ff628eb9e2f80a4031d660dc94286a0d0"

      def install
        bin.install "raftt"

        system "which git" # Verify git is available
        system "which ssh" # Verify ssh is available

        system bin/"raftt completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "raftt"

        system bin/"raftt completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_raftt"

        system bin/"raftt completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "raftt.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v56.0.0/raftt_56.0.0_darwin_arm64.tar.gz"
      sha256 "6ea30ffb91d514641e80ed7f68ec36c1296da6d596366ab1d890db9747b4d8c5"

      def install
        bin.install "raftt"

        system "which git" # Verify git is available
        system "which ssh" # Verify ssh is available

        system bin/"raftt completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "raftt"

        system bin/"raftt completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_raftt"

        system bin/"raftt completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "raftt.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v56.0.0/raftt_56.0.0_linux_amd64.tar.gz"
      sha256 "6779dab139b76d886bc1e1d45954d5675ae9361637e31c274fbef42f90c85e8e"

      def install
        bin.install "raftt"

        system "which git" # Verify git is available
        system "which ssh" # Verify ssh is available

        system bin/"raftt completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "raftt"

        system bin/"raftt completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_raftt"

        system bin/"raftt completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "raftt.fish"
      end
    end
  end

  depends_on "bash"

  test do
    system "#{bin}/raftt version"
  end
end
