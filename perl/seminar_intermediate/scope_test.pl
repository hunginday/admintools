#!/usr/bin/perl -w

use strict;

use vars qw($foo);

$foo = "Yo!";
print "\$foo: $foo\n";

my $foo = "Hey!";
print "\$foo: $foo\n";

{
  my $foo = "Yacht-Z";
  print "\$foo: $foo\n";
  print "\$main::foo: $main::foo\n";

  subroutine();
}

print "\$foo: $foo\n";
print "\$main::foo: $main::foo\n";

sub subroutine {
  print "\$foo: $foo\n";
}

package Bar;

print "\$foo: $foo\n";
