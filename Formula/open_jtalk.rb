require 'formula'

class OpenJtalk < Formula
  homepage 'http://open-jtalk.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/open-jtalk/Open%20JTalk/open_jtalk-1.08/open_jtalk-1.08.tar.gz'
  sha1 '34749abce5f8263ebbe9843b92407f4f0a742c66'
  version '1.08'

  depends_on 'hts_engine_api'

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
    ]

    system "./configure", *args
    system "make", "install"
  end
end
