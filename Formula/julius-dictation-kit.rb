require 'formula'

class JuliusDictationKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/60416/dictation-kit-v4.3.1-osx.tgz'
  sha1 '3e9fe6edcc3647192369cc08ac1725618eeb1551'
  version '4.3.1'

  def install
    share.install Dir['*'].reject{|f| f['src'] || f['bin']}
    bin.install(
      'bin/dnnclient-gpu.py',
      'bin/dnnclient.py'
    )
    bin.install Dir['bin/scoring/*.pl']
  end
end
