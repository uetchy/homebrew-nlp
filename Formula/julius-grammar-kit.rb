require 'formula'

class JuliusGrammarKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/51159/grammar-kit-v4.1.tar.gz'
  sha256 'baf016e239b0809c55ba1d50bc2d265c09ae505965ac6d61ca73f61b31d005ef'
  version '4.1'

  def install
    share.install Dir['*'].reject{|f| f['src'] || f['bin']}
  end
end
