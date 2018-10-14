class Slacker < Formula
  desc "Simple command line utility for posting messages to Slack"
  homepage "https://github.com/neilgupta/slacker"
  url "https://github.com/neilgupta/slacker/releases/download/1.1/slacker-1.1.tar.gz"
  sha256 "2f6afaa09d77dc5b76fa05ba014d7855e3bc377b"

  bottle :unneeded

  def install
    bin.install "slacker"
  end

  test do
    system "#{bin}/slacker", "--version"
  end
end
