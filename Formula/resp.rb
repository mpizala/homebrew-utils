# Formula/resp.rb
class Resp < Formula
  desc "Remove Excel sheet protection from .xlsx files"
  homepage "https://github.com/mpizala/remove-excel-sheet-protection"
  url "https://github.com/mpizala/remove-excel-sheet-protection/releases/download/v1.0.2/remove-excel-sheet-protection_Darwin_arm64.tar.gz"
  sha256 "e35ddfd3cb4655a66f32cb31d3a03c48477de52ae79675f2c19e15ed8cfe09b6"
  version "1.0.2"

  def install
    bin.install "resp"
  end

  test do
    system "#{bin}/resp"
  end
end
