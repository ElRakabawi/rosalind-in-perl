#!/usr/bin/env perl
use warnings;
use strict;

my $first_seq = <STDIN>;
my $second_seq = <STDIN>;
chomp ($first_seq, $second_seq);

my $hamming_dist = 0;
my $seq_len = length($first_seq);
my $first_seq_base;
my $second_seq_base;

for(my $i=0; $i<$seq_len; $i++){
	$first_seq_base = substr($first_seq, $i, 1);
	$second_seq_base = substr($second_seq, $i, 1);

	if($first_seq_base ne $second_seq_base){
		$hamming_dist++;
	}
}


print "\n$hamming_dist\n";