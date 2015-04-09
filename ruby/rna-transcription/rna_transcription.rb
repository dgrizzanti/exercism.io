class Complement
  DNA_TO_RNA = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  RNA_TO_DNA = DNA_TO_RNA.invert

  def self.of_dna(dna_strand)
    convert(dna_strand, DNA_TO_RNA)
  end

  def self.of_rna(dna_strand)
    convert(dna_strand, RNA_TO_DNA)
  end

  private

  def self.convert(dna_strand, map)
    dna_strand.chars.map do |nucleotide|
      map.fetch(nucleotide) { raise ArgumentError }
    end.join
  end
end
