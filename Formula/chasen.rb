require "formula"

class Chasen < Formula
  homepage "http://chasen-legacy.sourceforge.jp/"
  url "http://sourceforge.jp/frs/redir.php?f=/chasen-legacy/56305/chasen-2.4.5.tar.gz"
  sha256 "fd1a7afd73ed14e18b0fe82965c00a6baae383070360a4220fde01338611416a"

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
