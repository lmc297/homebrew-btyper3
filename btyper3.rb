class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.1.0.tar.gz"
  sha256 "67f3b35fbf885ac9d03b37ea792fea2d4e847fa3952935d1a8d23d21fbfc1533"
  version "3.1.0"
  
  depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "mlst.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_mlst_db", "seq_panC_db", "seq_virulence_db"
    puts "done with env"
  end
end
