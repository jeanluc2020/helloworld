use Test::More tests => 3;
use FindBin;
use lib "$FindBin::Bin/..";

use module;
my @values = ("Bar", "Baz");
my $count = 1;
my $m = module->new();

ok($m->doit() eq "Foo");

foreach my $value (@values) {
   $m = module->new($value);
   ok($m->doit() eq $value);
   $count++;
}

done_testing($count);

