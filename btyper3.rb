class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.1.0.tar.gz"
  sha256 "5eb1956183998bc24fce319e049a76772b2013fd4545f401b20e071679b81e46"
  version "3.1.0"
  
  depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "mlst.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_mlst_db", "seq_panC_db", "seq_virulence_db"
    puts "done with env"
  end
end
