package Person;

use strict;
use warnings;

use Carp;

sub new {
    my $class = shift;
    my $self = {@_};
    bless ($self, $class);
    return $self;
}

sub surname {
    my $self = shift;
    unless (ref $self) {
        croak "Should call surname() with an object, not a class!";
    }
    return $self->{surname};
}

1;
