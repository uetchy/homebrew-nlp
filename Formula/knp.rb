require "formula"

class Knp < Formula
  homepage "http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP"
  url "http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.12.tar.bz2&name=knp-4.12.tar.bz2"
  sha1 "715246971b758330714e27348e83cd95b1fa7feb"

  depends_on "juman"
  depends_on "tinycdb"
  depends_on "crf++" => :reccomend

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --with-juman-prefix=#{HOMEBREW_PREFIX}/opt/juman
    ]

    args << "--with-crf" if build.with? "crf++"

    system "./configure", *args
    system "make", "install"
  end

  test do
    system "false"
  end
end
