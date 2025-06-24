class Kxctl < Formula
  desc "kubectl for cross-cluster activities"
  homepage "https://github.com/mpizala/kxctl"
  url "https://github.com/mpizala/kxctl/releases/download/v1.2.1/kxctl_Darwin_arm64.tar.gz"
  sha256 "1a455f4f4bf0fbba1e9b3bbdf505c39ca3dab8218721acf64c3cad1e86663716"
  version "1.2.1"

  def install
    bin.install "kxctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kxctl --help")
  end
end
