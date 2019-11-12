class Blast < Formula
url "https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.9.0/ncbi-blast-2.9.0+-src.tar.gz"
  version "2.9.0"
  sha256 "ccb7df8be402473a42bbd34a235425ca383b1fdd15fff0310fd05efb120e86c9"

  bottle do
    sha256 "5aa82e85a39605cbeea6b06c33909a1d258012cb3ef2584b071117c2be08e793" => :catalina
    sha256 "a5dd9dbf6c1a2739a4e17d70658f3c3d64e96e1ed7d0278e634e9e5634dfc74b" => :mojave
    sha256 "23c98c61a2e4d0c581f98216000a202272c3b5fe44d0b5787181a0d8ec04f84d" => :high_sierra
  end

  depends_on "lmdb"

  conflicts_with "proj", :because => "both install a `libproj.a` library"

  def install
    cd "c++" do
      # Use ./configure --without-boost to fix
      # error: allocating an object of abstract class type 'ncbi::CNcbiBoostLogger'
      # Boost is used only for unit tests.
      # See https://github.com/Homebrew/homebrew-science/pull/3537#issuecomment-220136266
      system "./configure", "--prefix=#{prefix}",
                            "--without-debug",
                            "--without-boost"

      # Fix the error: install: ReleaseMT/lib/*.*: No such file or directory
      system "make"

      system "make", "install"
    end
  end

  test do
    (testpath/"test.fasta").write <<~EOS
      >U00096.2:1-70
      AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC
    EOS
    output = shell_output("#{bin}/blastn -query test.fasta -subject test.fasta")
    assert_match "Identities = 70/70", output
  end
end
