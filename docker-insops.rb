class DockerInsops < Formula
  desc "Utility to auto-login to docker.insops.net"
  homepage "https://docker.insops.net"
  url "gerrit:docker-insops", :using => :git
  version '20160222'

  bottle :unneeded

  def install
    system "gem install highline"
    system "git fetch gerrit:docker-insops refs/changes/66/72766/1 && git checkout FETCH_HEAD"
    bin.install "docker-insops"
  end
end
