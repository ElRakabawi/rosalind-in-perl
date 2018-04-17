#!/usr/bin/env perl
use warnings;
use strict;


my $seq = <STDIN>;
chomp $seq;

my $seq_len = length($seq);
my $char;

my @count = (0,0,0,0); #{A,C,G,T}

#Counting each nucleotide and incrementing it's counter
for(my $i=0; $i<$seq_len; $i++) {
	$char = substr($seq, $i, 1);
	if($char eq 'A'){
		$count[0]++;
	}
	elsif($char eq 'C') {
		$count[1]++;
	}
	elsif($char eq 'G') {
		$count[2]++;
	}
	elsif($char eq 'T') {
		$count[3]++;
	}
}

print "@count";