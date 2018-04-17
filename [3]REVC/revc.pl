#!/usr/bin/env perl
use warnings;
use strict;


my $seq = <STDIN>;
chomp $seq;

my $seq_len = length($seq);
my $rev_dna;
my $base;

for(my $i=0; $i<$seq_len; $i++){
  $base = substr($seq, $i, 1);
  if($base eq 'A'){
    $rev_dna .= 'T';
  }
  elsif($base eq 'G'){
    $rev_dna .= 'C';
  }
  elsif($base eq 'C'){
    $rev_dna .= 'G';
  }
  elsif($base eq 'T'){
    $rev_dna .= 'A';
  }
}
$rev_dna = reverse($rev_dna);

print "$rev_dna";