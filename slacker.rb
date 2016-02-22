class Slacker < Formula
  desc "Simple command line utility for posting messages to Slack"
  homepage "https://github.com/neilgupta/slacker"
  url "https://github.com/neilgupta/slacker/releases/download/1.0.1/slacker-1.0.1.tar.gz"
  sha256 "6f4d17ca27208b4126ca1aaf51a216a24a34a4b2cc0af5e76d2acee37bd007a1"

  bottle :unneeded

  def install
    bin.install "slacker"
  end

  test do
    system "#{bin}/slacker", "--version"
  end
end
