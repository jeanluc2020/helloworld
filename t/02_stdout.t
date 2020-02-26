use Test::More tests => 1;
use Test::Output;
use FindBin;
use lib "$FindBin::Bin/..";

use module;

stdout_is(sub { my $m = module->new(); $m->do_print; }, "Foo\n");

done_testing(1);
