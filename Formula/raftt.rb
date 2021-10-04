# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Raftt < Formula
  desc "Manage your development environment with ease"
  homepage "https://raftt.io/"
  version "18.0.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v18.0.2/raftt_18.0.2_darwin_amd64.tar.gz"
      sha256 "f839ac43135e9c6f81241cc464950617d7a5d142803037b7e237a50c6ac90eb1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v18.0.2/raftt_18.0.2_linux_amd64.tar.gz"
      sha256 "322d6fe793a478fe5196d9c9c63edf5f0f4bce8bb184fd62a613ef08b32ac4a5"
    end
  end

  depends_on "git"
  depends_on "bash"

  def install
    bin.install "raftt"

    system bin/"raftt completion bash > bash_completion.bash"
    bash_completion.install "bash_completion.bash" => "raftt"

    system bin/"raftt completion zsh > zsh_completion.zsh"
    zsh_completion.install "zsh_completion.zsh" => "_raftt"

    system bin/"raftt completion fish > fish_completion.fish"
    fish_completion.install "fish_completion.fish" => "raftt.fish"
  end

  test do
    system "#{bin}/raftt version"
  end
end
