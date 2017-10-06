require "formula"

class Knp < Formula
  homepage "http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP"
  url "http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.18.tar.bz2&name=knp-4.18.tar.bz2"
  sha256 "4205ad0d5f2c5174879c7f23990064e531bb170365bf05e75bd683d7c5fe3d4b"

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
