#!/usr/bin/env perl
use warnings;
use strict;


my $seq = <STDIN>;
chomp $seq;

my $seq_len = length($seq);
my $char;

my $rna_seq;

for(my $i=0; $i<$seq_len; $i++) {
	$char = substr($seq, $i, 1);
	if($char eq 'T'){
		$rna_seq .= 'U';
	}
	elsif($char eq 'A' || $char eq 'C' || $char eq 'G') {
		$rna_seq .= $char;
	}
}

print "$rna_seq";