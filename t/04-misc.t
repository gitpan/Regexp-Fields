
BEGIN {
    unshift @INC, qw(. ./t ../t);
    require "test.pl";
    plan(tests => 1);
}

use Regexp::Fields;

SKIP: {
    skip "scope", 1;
    1 while "x\n" =~ /(?<m>.)/g;
    is "$&{m}", "\n", "don't restore PL_multiline too soon";
}


