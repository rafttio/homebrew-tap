# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RafttEdge < Formula
  desc "Manage your development environment with ease - edge version, might be unstable"
  homepage "https://raftt.io/"
  version "42.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v42.0.3/raftt_42.0.3_darwin_arm64.tar.gz"
      sha256 "65e386494131f0fac8215f974d94b12610cf45870456937661f85b827cbcf3ce"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v42.0.3/raftt_42.0.3_darwin_amd64.tar.gz"
      sha256 "1480da3d11a375c2ab8fbaf1deed56a5a582b33e012f2cda3ca41f5bfa555ed5"

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
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v42.0.3/raftt_42.0.3_linux_amd64.tar.gz"
      sha256 "03bc5e6a1dd5694e39a9ae7d87b37ba5f567ac3495c4b180d50fa4bbf6c1f3fb"

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
