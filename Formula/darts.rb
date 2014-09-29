require "formula"

class Darts < Formula
  homepage "http://chasen.org/~taku/software/darts/"
  url "http://chasen.org/~taku/software/darts/src/darts-0.32.tar.gz"
  sha1 "14a20a36ded935bef2752a726e027baece7bc801"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
