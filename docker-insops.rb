class DockerInsops < Formula
  desc "Utility to auto-login to docker.insops.net"
  homepage "https://docker.insops.net"
  url "gerrit:docker-insops", :branch => "dev/v1.0", :using => :git
  version '1.0'

  bottle :unneeded

  def install
    system "gem", "install", "highline", "--version", "~> 1.7.8", "--install-dir", prefix
    bin.install "docker-insops"
  end
end
