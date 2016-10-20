require "formula"

class Darts < Formula
  homepage "http://chasen.org/~taku/software/darts/"
  url "http://chasen.org/~taku/software/darts/src/darts-0.32.tar.gz"
  sha256 "0dfc0b82f0a05d93b92acf849368e54bf93f1de8ffb31ba0a21e45ab9e269285"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
