#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

package Stables 1.01 {
    use Moose;

    has "animals" => (
        traits => ["Array"],
        is => "rw",
        isa => "ArrayRef[Animal]",
        default => sub { [] },
        handles => {
            add_animal => "push",
            add_animals => "push",
        },
    );

    sub roll_call {
        my($self) = @_;

        dump \$self->animals;

        for my $animal ($self->animals) {
            say "Some ", $animal->type,
            " named ", $animal->name,
            " is in the stable";
        }
    } 
}

package Animal 1.01 {
    use Moose;

    has "name" => (
        is => "rw",
        isa => "Str",
        required => 1,
    );

    has "type" => (
        is => "rw",
        isa => "Str",
        default => "animal",
    );
}

my $stables = Stables->new;

my $hung = Animal->new(name => "Tran", type => "pig");
dump \$hung;

$stables->add_animal(
    Animal->new(name => "Mr. Ed", type => "horse")
);

$stables->add_animals(
    Animal->new(name => "Donkey", type => "donkey"),
    Animal->new(name => "Lampwick", type => "donkey"),
    Animal->new(name => "Trigger", type => "horse" ),
);

$stables->roll_call;




