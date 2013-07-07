require 'formula'

class Julius < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?m=keihanna&f=%2Fjulius%2F51820%2Fjulius-4.2.3.tar.gz'
  sha1 '8b1acae4079cbc5ee32b0536da5d4403361a0676'

  def install
    ENV.j1
    ENV['CFLAGS'] = '-DNDEBUG -03'
    args = %W[
      --enable-words-int
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
      --mandir=#{man}
      --exec-prefix=#{prefix}
    ]

    system "./configure", *args
    inreplace "julius/main.c",
        'if (j_adin_init(recog) == FALSE) return;',
        'if (j_adin_init(recog) == FALSE) return 0;'
    system "make"
    system "make install"
  end
end
