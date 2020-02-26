use Test::More tests => 3;
use Test::Output;
use FindBin;
use lib "$FindBin::Bin/..";

use module;
my @values = ("Bar", "Baz");
my $count = 1;

stdout_is(sub { my $m = module->new(); $m->do_print; }, "Foo\n");

foreach my $value (@values) {
   stdout_is(sub { my $m = module->new($value); $m->do_print; }, "$value\n");
   $count++;
}

done_testing($count);
