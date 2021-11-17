# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Raftt < Formula
  desc "Manage your development environment with ease"
  homepage "https://raftt.io/"
  version "26.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v26.1.3/raftt_26.1.3_darwin_amd64.tar.gz"
      sha256 "42d39bf98db4918327bb53c106f74852dc7aa285d1b5c4dc5d30a78323343a97"

      def install
        bin.install "raftt"

        system "which git" # Verify git is available

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v26.1.3/raftt_26.1.3_linux_amd64.tar.gz"
      sha256 "d0e756344df0b6e7ffcb9e9b4e766010db4730c8715f2a88acc3ad771c635b0a"

      def install
        bin.install "raftt"

        system "which git" # Verify git is available

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
