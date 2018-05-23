require "formula"

class Knp < Formula
  homepage "http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP"
  url "http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.19.tar.bz2&name=knp-4.19.tar.bz2"
  sha256 "fe5d1249e7c7716e4ac76a57052096bb8b321829af39f3fa2ad5acd9e060427b"

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