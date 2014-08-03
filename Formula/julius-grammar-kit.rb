require 'formula'

class JuliusGrammarKit < Formula
  homepage 'http://julius.sourceforge.jp/'
  url 'http://sourceforge.jp/frs/redir.php?f=/julius/51159/grammar-kit-v4.1.tar.gz'
  sha1 'e3cdbd69514dc77d6e0068960c5f3e2cd59c63a1'
  version '4.1'

  def install
    share.install Dir['*'].reject{|f| f['src'] || f['bin']}
  end
end
