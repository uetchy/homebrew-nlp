require 'formula'

class JuliusDictationKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/60416/dictation-kit-v4.3.1-osx.tgz'
  sha1 '3e9fe6edcc3647192369cc08ac1725618eeb1551'

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
