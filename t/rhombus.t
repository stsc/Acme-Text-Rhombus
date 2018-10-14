#!/usr/bin/perl

use strict;
use warnings;

use Acme::Text::Rhombus qw(rhombus);
use Test::More tests => 2;

my $rhombus1 = rhombus(
    lines   =>      31,
    letter  =>     'c',
    case    => 'upper',
    fillup  =>     '+',
    forward =>       1,
);
my $rhombus2 = rhombus(
    lines   =>      15,
    letter  =>     'x',
    case    => 'lower',
    fillup  =>     '*',
    forward =>       0,
);

my @rhombuses = split /###\n/, do { local $/; <DATA> };

is($rhombus1, $rhombuses[0], 'rhombus()');
is($rhombus2, $rhombuses[1], 'rhombus()');

__DATA__
+++++++++++++++C+++++++++++++++
++++++++++++++DDD++++++++++++++
+++++++++++++EEEEE+++++++++++++
++++++++++++FFFFFFF++++++++++++
+++++++++++GGGGGGGGG+++++++++++
++++++++++HHHHHHHHHHH++++++++++
+++++++++IIIIIIIIIIIII+++++++++
++++++++JJJJJJJJJJJJJJJ++++++++
+++++++KKKKKKKKKKKKKKKKK+++++++
++++++LLLLLLLLLLLLLLLLLLL++++++
+++++MMMMMMMMMMMMMMMMMMMMM+++++
++++NNNNNNNNNNNNNNNNNNNNNNN++++
+++OOOOOOOOOOOOOOOOOOOOOOOOO+++
++PPPPPPPPPPPPPPPPPPPPPPPPPPP++
+QQQQQQQQQQQQQQQQQQQQQQQQQQQQQ+
RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
+SSSSSSSSSSSSSSSSSSSSSSSSSSSSS+
++TTTTTTTTTTTTTTTTTTTTTTTTTTT++
+++UUUUUUUUUUUUUUUUUUUUUUUUU+++
++++VVVVVVVVVVVVVVVVVVVVVVV++++
+++++WWWWWWWWWWWWWWWWWWWWW+++++
++++++XXXXXXXXXXXXXXXXXXX++++++
+++++++YYYYYYYYYYYYYYYYY+++++++
++++++++ZZZZZZZZZZZZZZZ++++++++
+++++++++AAAAAAAAAAAAA+++++++++
++++++++++BBBBBBBBBBB++++++++++
+++++++++++CCCCCCCCC+++++++++++
++++++++++++DDDDDDD++++++++++++
+++++++++++++EEEEE+++++++++++++
++++++++++++++FFF++++++++++++++
+++++++++++++++G+++++++++++++++
###
*******x*******
******www******
*****vvvvv*****
****uuuuuuu****
***ttttttttt***
**sssssssssss**
*rrrrrrrrrrrrr*
qqqqqqqqqqqqqqq
*ppppppppppppp*
**ooooooooooo**
***nnnnnnnnn***
****mmmmmmm****
*****lllll*****
******kkk******
*******j*******
