require 'formula'

class OpenJtalk < Formula
  homepage 'http://open-jtalk.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/open-jtalk/Open%20JTalk/open_jtalk-1.08/open_jtalk-1.08.tar.gz'
  sha256 '4771014f71734653b158e1723fd8c5c4440246a1fcc83491d6aa1c791ee2109e'
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
