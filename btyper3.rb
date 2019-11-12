class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.0.1.tar.gz"
  sha256 "d528e4782168e4e27007bb69853801498da5da5efa7bfddfaec28c056c276ede"
  version "3.0.1"
  
  #depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_virulence_db"
    puts "done with env"
  end
end
