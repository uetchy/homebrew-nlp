require "formula"

class Knp < Formula
  homepage "http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP"
  url "http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.18.tar.bz2&name=knp-4.18.tar.bz2"
  sha256 "7f7c007b735b4ac2d93eb0958e8253d8d7b607ae93f2238747dbe8e4f15689ca"

  depends_on "juman"
  depends_on "tinycdb"

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --with-juman-prefix=#{HOMEBREW_PREFIX}/opt/juman
    ]

    system "./configure", *args
    system "make", "install"
  end

  test do
    system "false"
  end
end
