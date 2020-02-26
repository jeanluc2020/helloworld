use Test::More tests => 1;
use FindBin;
use lib "$FindBin::Bin/..";


ok(eval "require module;");

done_testing(1);
