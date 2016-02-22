class Slacker < Formula
  desc "Simple command line utility for posting messages to Slack"
  homepage "https://github.com/neilgupta/slacker"
  url "https://github.com/neilgupta/slacker/releases/download/1.0/slacker-1.0.tar.gz"
  sha256 "ccc94db8fa7441f62e97b5223b1eab2316315309af716d70335c3e1c76e0847d"

  bottle :unneeded

  def install
    bin.install "slacker"
  end

  test do
    system "#{bin}/slacker", "--version"
  end
end
