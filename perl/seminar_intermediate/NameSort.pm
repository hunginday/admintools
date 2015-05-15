package NameSort 0.1;

use parent qw(Exporter);

our @EXPORT = qw(name_sort);

sub name_sort {
    $input = shift;

    my @sorted = 
        map { $_->[0] }
        sort { $a->[1] cmp $b->[1] }
        map { m/(.*?)\s*(\S+)$/; [$_, "$2 $1" ] }
        @$input;

    return \@sorted;
}

1;
