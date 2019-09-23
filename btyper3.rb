class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.0.0.tar.gz"
  sha256 "fedafbff4e0a56bcade58b523c58286e039b7cf83548e38fdd40d5da57332734"
  version "3.0.0"
  
  depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_virulence_db"
    puts "done with env"
  end
end
