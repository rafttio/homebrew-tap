# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RafttEdge < Formula
  desc "Manage your development environment with ease - edge version, might be unstable"
  homepage "https://raftt.io/"
  version "53.0.3-test2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v53.0.3-test2/raftt_53.0.3-test2_darwin_amd64.tar.gz"
      sha256 "ca35436912177d6c2a20e2eeee55ca5c9bc3132d763069b15dbcddb5d920003d"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v53.0.3-test2/raftt_53.0.3-test2_darwin_arm64.tar.gz"
      sha256 "00d78ebd186855941b771cc64a5de689859b9cbc0b3349e3528b50201f48fc55"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v53.0.3-test2/raftt_53.0.3-test2_linux_amd64.tar.gz"
      sha256 "370e8ee2d4d3efa3b6657d809009a849cac4e0a92590e00383e931323a884927"

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
