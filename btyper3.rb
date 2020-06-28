class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.1.0.tar.gz"
  sha256 "e2220002789fe9665ff65e979ceb123743af7c807974271e233156988e5b4207"
  version "3.1.0"
  
  depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "mlst.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_mlst_db", "seq_panC_db", "seq_virulence_db"
    puts "done with env"
  end
end
