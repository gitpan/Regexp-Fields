
BEGIN { 
    unshift @INC, qw(. ./t ../t);
    require "test.pl";
    plan(tests => 2);
}

use Regexp::Fields;

ok tied %{&}, 'tied %{&}';
is ref tied %{&}, "Regexp::Fields::tie", 'ref tied %{&}';

