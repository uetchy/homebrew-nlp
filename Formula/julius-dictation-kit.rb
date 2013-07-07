require 'formula'

class JuliusDictationKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fjulius%2F59050%2Fdictation-kit-v4.2.3.tar.gz'
  md5 '0de511ff01a2b45d6998b7b7f1d78db0'

  def install
    share.install 'fast.jconf'
    share.install 'light.jconf'
    share.install 'model'
  end
end
