# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RafttEdge < Formula
  desc "Manage your development environment with ease - edge version, might be unstable"
  homepage "https://raftt.io/"
  version "122.3.3"

  depends_on "bash"

  on_macos do
    if Hardware::CPU.arm?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v122.3.3/raftt_122.3.3_darwin_arm64.tar.gz"
      sha256 "d1f769cd4e7b9bf2aa21eb0a8551842b94982875c143727c8fe7f721c8955d98"

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
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v122.3.3/raftt_122.3.3_darwin_amd64.tar.gz"
      sha256 "8a7aa19bd8fdfc1c6c94eca7cd37d4ab780fb2762f5eb6dc9345eb45dca9d525"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v122.3.3/raftt_122.3.3_linux_amd64.tar.gz"
      sha256 "1c375dcb3593c67a45a27de44cc8b57323a87ed92e73c76efea6186f83eac2ab"

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