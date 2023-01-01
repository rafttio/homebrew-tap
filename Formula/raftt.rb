# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Raftt < Formula
  desc "Manage your development environment with ease"
  homepage "https://raftt.io/"
  version "77.2.1"

  depends_on "bash"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v77.2.1/raftt_77.2.1_darwin_amd64.tar.gz"
      sha256 "ac581025e5eb64160a109ca57e6922a33bdfab6cfe54bbd6aaf188b3356572fd"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v77.2.1/raftt_77.2.1_darwin_arm64.tar.gz"
      sha256 "e39f01f6291e722f2b93d138d56c64ba0de0acf46482e3d4cc8e4a8409f5a608"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v77.2.1/raftt_77.2.1_linux_amd64.tar.gz"
      sha256 "7198ed65d4a04164ef0ad5eccfe4fd905bfa1b2f5da0970027d24a4f463b86e6"

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

  test do
    system "#{bin}/raftt version"
  end
end
