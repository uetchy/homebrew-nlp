require 'formula'

class HtsEngineApi < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/hts-engine/hts_engine%20API/hts_engine_API-1.09/hts_engine_API-1.09.tar.gz'
  sha256 'b35a9c7c6868e15be0fbfb91c7a3696cf623d82f2d2058d2fa4362c289b62895'
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
