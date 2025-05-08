class Kxctl < Formula
  desc "kubectl for cross-cluster activities"
  homepage "https://github.com/mpizala/kxctl"
  url "https://github.com/mpizala/kxctl/releases/download/v1.0.3/kxctl_Darwin_arm64.tar.gz"
  sha256 "4573ecdd446fbad33e78cf9627eb2aac54258defe44c2589345d8151050acde8"
  version "1.0.3"

  def install
    bin.install "kxctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kxctl --help")
  end
end
