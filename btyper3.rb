class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.1.0.tar.gz"
  sha256 "d144e9d59890473c8e1fac5614212f9e5d63d8bc7d123ce0705592110f21937c"
  version "3.1.0"
  
  depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "mlst.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_mlst_db", "seq_panC_db", "seq_virulence_db"
    puts "done with env"
  end
end
