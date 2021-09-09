# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Raftt < Formula
  desc "Manage your development environment with ease"
  homepage "https://raftt.io/"
  version "13.0.2-alpha"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v13.0.2-alpha/darwin"
      sha256 "eec80cb601eaced6e13c2b50c19cc9f1c2d545635e7dedd5b0489a50cb080194"
    end
    if Hardware::CPU.arm?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v13.0.2-alpha/darwin"
      sha256 "bf0ca2d5d187f1b18fa9e2f7cb2a457f008fcd8bd0e5314e9f47bac34ffe0494"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v13.0.2-alpha/linux"
      sha256 "40614ef33ec39ce2543215c480c4b015f65bdb1b5f0df42bea6d3c163dec5022"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://raftt-resources.s3.eu-central-1.amazonaws.com/cli/v13.0.2-alpha/linux"
      sha256 "07ae3c181a7184abe4ab1c6d1b510e3cd0d731dff3a9fe57ffc33940a95a9f43"
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
