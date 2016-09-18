#!/user/bin/perl
use strict;

my $count = $ARGV[0];

qx{dd if=/dev/urandom of=file-$count.txt bs=4096 count=$count};
