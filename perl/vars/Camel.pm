use strict;
use warnings;

package Camel;

sub new {
  my $class = shift;
  return bless {}, $class;
}

sub saddle {
    print "saddle\n";
}

1;
