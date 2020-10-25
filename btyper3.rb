class Btyper3 < Formula
  desc "A command line tool for standardized taxonomic classification of Bacillus cereus group genome assemblies"
  homepage "https://github.com/lmc297/BTyper3/"
  url "https://github.com/lmc297/BTyper3/raw/master/archive/btyper-3.1.1.tar.gz"
  sha256 "14ec49050f660ac6f8b1124b598a681144a4873ff883da473da6e801f0e1f7e9"
  version "3.1.1"
  
  depends_on "blast"
  #depends_on "fastani"
  
  bottle :unneeded 
   
  def install
    bin.install "ani.py", "blast.py", "btyper3", "build_btyper3_ani_db.py", "download_pubmlst_latest.py", "mlst.py", "print_final_results.py", "seq_ani_db", "seq_bt_db", "seq_mlst_db", "seq_panC_db", "seq_virulence_db"
    puts "done with env"
  end
end
