require 'formula'

class HtsEngine < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/hts-engine/hts_engine%20API/hts_engine_API-1.07/hts_engine_API-1.07.tar.gz'
  sha1 '11a81e86afa06ed0d7e7e7c91d249eb37e91e672'

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
