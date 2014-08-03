require 'formula'

class OpenJtalk < Formula
  homepage 'http://open-jtalk.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/open-jtalk/Open%20JTalk/open_jtalk-1.07/open_jtalk-1.07.tar.gz'
  sha1 '792fe7ba9ce2189e67b2d6902147e560cb6d5446'
  version '1.07'

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
