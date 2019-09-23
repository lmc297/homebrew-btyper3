class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.0.0.tar.gz"
  sha256 "adad68dafa4b890e197a610483ae55ac6f6380c9e429b2556f4529f42cff2ece"
  version "3.0.0"
  
  depends_on "blast"
  depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_anib_db.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_virulence_db"
    puts "done with env"
  end
end
