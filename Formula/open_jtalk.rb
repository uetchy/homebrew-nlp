require 'formula'

class OpenJtalk < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/open-jtalk/Open%20JTalk/open_jtalk-1.06/open_jtalk-1.06.tar.gz'
  sha1 'f58ef939727b5287aa9710f35f22719eaaf8b758'

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
      --with-charset=UTF-8
    ]

    system "./configure", *args

    system "make", "install"
  end
end
