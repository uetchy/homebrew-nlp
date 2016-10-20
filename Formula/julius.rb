require 'formula'

class Julius < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/60273/julius-4.3.1.tar.gz'
  sha256 '4bf77c7b91f4bb0686c375c70bd4f2077e7de7db44f60716af9f3660f65a6253'
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
