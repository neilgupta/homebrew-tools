class Slacker < Formula
  desc "Simple command line utility for posting messages to Slack"
  homepage "https://github.com/neilgupta/slacker"
  url "https://github.com/neilgupta/slacker/releases/download/1.1/slacker-1.1.tar.gz"
  head "https://github.com/neilgupta/slacker.git", :branch => :master, :using => :git
  version '1.1'

  bottle :unneeded

  def install
    bin.install "slacker"
  end

  test do
    system "#{bin}/slacker", "--version"
  end
end
