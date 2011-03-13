require 'formula'

class SjDarcsToGit <Formula
  head 'git://git.sanityinc.com/darcs-to-git.git'
  homepage 'http://www.sanityinc.com/articles/converting-darcs-repositories-to-git'

  def install
    # Install the git bash completion file
    bin.install 'darcs-to-git'
  end
end
