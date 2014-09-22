require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Knp < Formula
  homepage "http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP"
  url "http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.11.tar.bz2&name=knp-4.11.tar.bz2"
  sha1 "56ee0f9e5dfd1fa4cc87a02043c5eb3b9af6812a"

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
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
