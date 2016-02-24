class CgDeploy < Formula
  desc "Deploy script for Cloudgate"
  homepage "https://gerrit.instructure.com/plugins/gitblit/blob/?f=README.md&r=cg-deploy.git&h=dev/1.0"
  url "gerrit:cg-deploy", :branch => "dev/1.0", :using => :git
  version '1.0'

  depends_on "docker-insops"
  depends_on "slacker"
  depends_on "codekitchen/dinghy/dinghy"

  bottle :unneeded

  def install
    system "gem", "install", "aws-keychain-util", "--install-dir", prefix
    bin.install "cg-deploy"
  end
  
  def caveats
    "cg-deploy depends on aws-creds and dinghy, remember to setup both before running cg-deploy!"
  end

  test do
    system "#{bin}/cg-deploy", "version"
  end
end
