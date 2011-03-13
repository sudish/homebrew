require 'formula'

class SjTmux <Formula
  def download_strategy; GitDownloadStrategy; end
  head '/Users/sj/src/git/tmux', :tag => 'sj'
  homepage 'http://tmux.sourceforge.net'

  def install
    ENV['PREFIX'] = "#{prefix}"
    system "./configure"

    inreplace "GNUmakefile" do |f|
      # Fix 'install' flags
      f.gsub! " -g bin -o root", ""
      # Put docs in the right place
      f.gsub! "man/man1", "share/man/man1"
    end

    system "make install"
  end
end
