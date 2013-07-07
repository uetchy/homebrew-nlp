require 'formula'

class JuliusDictationKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/59050/dictation-kit-v4.2.3.tar.gz'
  sha1 '39c66aa7d9ccf348467d38e0e5ebb3d946b577ff'

  def install
    prefix.install 'doc/Release.txt'
    prefix.install 'doc/Release-ja.txt'
    man.install Dir['doc/man/*']
    share.install 'fast.jconf'
    share.install 'light.jconf'
    share.install 'model'
  end
end
