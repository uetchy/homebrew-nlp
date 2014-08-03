require 'formula'

class HtsEngine < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/hts-engine/hts_engine%20API/hts_engine_API-1.08/hts_engine_API-1.08.tar.gz'
  sha1 'd2b398b3a6af9639df39cf6dc457d79e79f2a60e'
  version '1.08'

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
