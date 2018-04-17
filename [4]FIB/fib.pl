#!/usr/bin/env perl
use warnings;
use strict;
use Memoize;


memoize('rec_rel'); #Using memoize to trade of space for time (Function Acceleration)


# Compute Recurrence relation sequence (returning n-th element)
sub rec_rel {
  my $n = shift;
  my $k = shift;
  return $n if $n < 2;
  rec_rel($n-1, $k) + (rec_rel($n-2, $k) * ($k)); # -> (Fn = Fn-1 + Fn-2(k))
}

chomp(my $line = <>);
#n -> Number of generations (n-th el in seq), k -> number of rabbit pairs per generation
my ($n, $k) = split " ", $line;
print rec_rel($n, $k) . " ";