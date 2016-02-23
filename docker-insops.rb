class DockerInsops < Formula
  desc "Utility to auto-login to docker.insops.net"
  homepage "https://docker.insops.net"
  url "gerrit:docker-insops", :branch => "refs/changes/66/72766/1", :using => :git

  bottle :unneeded

  def install
    system "gem install highline"
    bin.install "docker-insops"
  end
end
