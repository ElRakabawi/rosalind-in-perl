#!/usr/bin/env perl
use warnings;
use strict;


#GC_percentage in a DNA Seq. function
sub gc_per {
	my $dna = shift;
	my $dna_len = length($dna);
	my $base;
	my $gc_counter = 0;

	for(my $i=0; $i<$dna_len; $i++){
		$base = substr($dna, $i, 1);
		if($base eq 'G' || $base eq 'C'){
			$gc_counter++;
		}
	}

	my $gc_per = ($gc_counter/$dna_len)*100;
	return $gc_per;
}


my $iter = <STDIN>; #Get the number of FASTA sequences.
my $fasta_name; #FASTA formatted sequence name
my $dna_seq; #FASTA formatted sequence
my $gc_value;
my $largest_gc = 0;
my $largest_seq;


for(my $i=0; $i<$iter; $i++){
	$fasta_name = <STDIN>;
	chomp $fasta_name;
	$fasta_name = substr($fasta_name, 1, length($fasta_name)); #Remove (>) character from the sequence name

	$dna_seq = <STDIN>;
	chomp $dna_seq;

	$gc_value = gc_per($dna_seq); #Compute the current sequence GC_percentage
	if($gc_value > $largest_gc){  #Comparing old GC_value with the next GC_value, if it's larger then this sequence has largest GC_percentage
		$largest_gc = $gc_value;
		$largest_seq = $fasta_name;
	}
}

print "\n$largest_seq\n$largest_gc\n";



