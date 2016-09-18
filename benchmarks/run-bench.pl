#!/usr/bin/perl
use strict;

open (my $CFG_FH, "<", "run-bench.cfg");
open (my $RES_FH, ">", "results.csv");

my ($num_bench, $num_iter, $num_spin, $num_trials);

my $it = 1;
while (my $row = <$CFG_FH>) {
  # Parse config file
  if ($row =~ /(\d+),(\d+),(\d+),(\d+)/) {
    $num_trials = $1;
    $num_bench = $2;
    $num_iter = $3;
    $num_spin = $4;
  } else {
     die "Bad configuration.\n";
  }

  print "trial " . $it++ . ": ";
  for (my $i = 1; $i <= $num_trials; $i++) {
    my $res = qx{./benchmark -b $num_bench -i $num_iter -s $num_spin};
    chomp $res;
    print $RES_FH $res . "\n";  # Write to result file
    print "$i ";                # print status
  }
  print "\n";
}

close $CFG_FH;
close $RES_FH;
