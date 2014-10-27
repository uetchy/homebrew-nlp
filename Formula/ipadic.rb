require "formula"

class Ipadic < Formula
  homepage "http://sourceforge.jp/projects/ipadic/"
  url "http://sourceforge.jp/frs/redir.php?f=/ipadic/24435/ipadic-2.7.0.tar.gz"
  sha1 "52784d8abb3361eafec83ab543be63cf087f9eb2"

  depends_on "chasen"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
