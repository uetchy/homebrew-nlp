require "formula"

class Chasen < Formula
  homepage "http://chasen-legacy.sourceforge.jp/"
  url "http://sourceforge.jp/frs/redir.php?f=/chasen-legacy/56305/chasen-2.4.5.tar.gz"
  sha1 "a07d7f423531d2c155384bc6de64d515c5f0ac1c"

  depends_on "darts"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"

    (prefix + "etc").mkdir
    (prefix + "etc/README").write "Please remove after installation"
  end
end
