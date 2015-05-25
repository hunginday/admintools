package Person;

use strict;
use warnings;

sub new {
    my $self = {};
    bless ($self, "Person");
    return $self;
}

1;
