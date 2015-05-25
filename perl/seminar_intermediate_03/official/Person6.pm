package Person;

use strict;
use warnings;

use Carp;

my $population = 0;

sub new {
    my $class = shift;
    my $self = {@_};
    bless ($self, $class);
    $population++;
    return $self;
}

# Object accessors
sub address  { $_[0]->{address} = $_[1] if defined $_[1]; $_[0]->{address} }
sub surname  { $_[0]->{surname} = $_[1] if defined $_[1]; $_[0]->{surname} }
sub forename { $_[0]->{forename} = $_[1] if defined $_[1]; $_[0]->{forename} }
sub phone_no { $_[0]->{phone_no} = $_[1] if defined $_[1]; $_[0]->{phone_no} }

sub occupation {
    $_[0]->{occupation} = $_[1] if defined $_[1]; $_[0]->{occupation}
}

# Class accessors
sub headcount { $population }

1;
