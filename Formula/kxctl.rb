class Kxctl < Formula
  desc "kubectl for cross-cluster activities"
  homepage "https://github.com/mpizala/kxctl"
  url "https://github.com/mpizala/kxctl/releases/download/v1.2.0/kxctl_Darwin_arm64.tar.gz"
  sha256 "3b0f4b7b9a4daec1be7584fdc922666d648245bb1b4bfdba17f2a31b15fc7dc0"
  version "1.2.0"

  def install
    bin.install "kxctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kxctl --help")
  end
end
