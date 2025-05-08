class Kxctl < Formula
  desc "kubectl for cross-cluster activities"
  homepage "https://github.com/mpizala/kxctl"
  url "https://github.com/mpizala/kxctl/releases/download/v1.0.0/kxctl_Darwin_arm64.tar.gz"
  sha256 "8f839a79fcf9e353f422fdb687af7af6260dc54ab0057d2b842f608ccb0fc2e5"
  version "1.0.0"

  def install
    bin.install "kxctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kxctl --help")
  end
end
