package Employee;

use Person9;
use strict;
use warnings;

our @ISA = qw(Person);

# Object accessors
sub employer  { $_[0]->{employer} = $_[1] if defined $_[1]; $_[0]->{employer} }
sub position  { $_[0]->{position} = $_[1] if defined $_[1]; $_[0]->{position} }
sub salary    { $_[0]->{salary} = $_[1] if defined $_[1]; $_[0]->{salary} }

sub raise {
    my $self = shift;
    my $newsalary = $self->salary + 2000;
    $self->salary($newsalary);
    return $self;
}

1;
