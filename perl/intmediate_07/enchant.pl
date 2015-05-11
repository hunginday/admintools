#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

package MagicalCodeRef 1.00 {
    use overload '""' => sub {
        require B;
        my $ref = shift;
        my $gv = B::svref_2object($ref)->GV;
        require B::Deparse;
        my $deparse = B::Deparse->new;
        my $code = $deparse->coderef2text($ref);
        my $string = sprintf "−−−code ref−−−\n%s:%d\n%s\n−−−",
        $gv->FILE, $gv->LINE, $code;
    };
    sub enchant { bless $_[1], $_[0] }
}

my $sub = MagicalCodeRef->enchant( sub { say 'Gilligan!!!' } );
my @array = ( \ 'xyz', [qw(a b c)], $sub );
foreach ( @array ) {
    when( ref eq ref \ '' ) { say "Scalar $$_" }
    when( ref eq ref [] ) { say "Array @$_" }
    when( ref eq 'MagicalCodeRef' ) { say "Sub $sub" }
}
