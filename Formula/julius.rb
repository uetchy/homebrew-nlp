require 'formula'

class Julius < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/60273/julius-4.3.1.tar.gz'
  sha1 '88f64ae9ed00b6ab5a2d4fe07e3ced141a46c196'
  version '4.3.1'

  def install
    ENV.j1
    ENV['CFLAGS'] = '-DNDEBUG -O3'
    args = %W[
      --enable-words-int
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
      --mandir=#{man}
      --exec-prefix=#{prefix}
    ]

    system "./configure", *args
    system "make"
    system "make install"
  end
end
