require "formula"

class Chasen < Formula
  homepage ""
  url "http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fchasen-legacy%2F56305%2Fchasen-2.4.5.tar.gz"
  sha1 "a07d7f423531d2c155384bc6de64d515c5f0ac1c"

  depends_on 'darts'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
