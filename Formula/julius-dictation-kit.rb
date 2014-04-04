require 'formula'

class JuliusDictationKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/60416/dictation-kit-v4.3.1-osx.tgz'
  sha1 '8b94b3dabf1ed27f94864e72767abb2fc274c5db'

  def install
    prefix.install 'HOWTO.txt'
    prefix.install 'HOWTO-dnn.txt'
    prefix.install 'TROUBLE.txt'
    prefix.install 'doc/LICENSE.txt'
    prefix.install 'doc/Release.txt'
    prefix.install 'doc/Release-ja.txt'
    prefix.install 'doc/Sample.jconf'
    man.install Dir['doc/manuals/*']
    share.install 'main.jconf'
    share.install 'am-dnn.jconf'
    share.install 'am-gmm.jconf'
    share.install 'model'
  end
end
