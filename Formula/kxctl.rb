class Kxctl < Formula
  desc "kubectl for cross-cluster activities"
  homepage "https://github.com/mpizala/kxctl"
  url "https://github.com/mpizala/kxctl/releases/download/v1.1.0/kxctl_Darwin_arm64.tar.gz"
  sha256 "7ce910e8fa62af279a94a2276ebbe65ab5ecb6ce249291c016add069dc979210"
  version "1.1.0"

  def install
    bin.install "kxctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kxctl --help")
  end
end
