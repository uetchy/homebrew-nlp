require 'formula'

class HtsEngineApi < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/hts-engine/hts_engine%20API/hts_engine_API-1.09/hts_engine_API-1.09.tar.gz'
  sha1 '1c264c2bd29c87f49ace2c5d2b2fcd6b5b44b12c'
  version '1.09'

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
