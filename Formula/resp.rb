# Formula/resp.rb
class Resp < Formula
  desc "Remove Excel sheet protection from .xlsx files"
  homepage "https://github.com/mpizala/remove-excel-sheet-protection"
  url "https://github.com/mpizala/remove-excel-sheet-protection/releases/download/v1.0.0/resp_darwin_arm64.tar.gz"
  sha256 "<checksum>"
  version "1.0.0"

  def install
    bin.install "resp"
  end

  test do
    system "#{bin}/resp"
  end
end
