package NameSort 0.1;

use parent qw(Exporter);

our @EXPORT = qw(name_sort name_sort2);

sub name_sort {
    $input = shift;

    my @sorted = 
        map { $_->[0] }
        sort { $a->[1] cmp $b->[1] }
        map { m/(.*?)\s*(\S+)$/; [$_, "$2 $1" ] }
        @$input;

    return \@sorted;
}

sub name_sort2 {
    $input = shift;

    my @sorted = 
        map { $_->[0] }
        sort {
            $a->[1] cmp $b->[1] or
            $a->[2] <=> $b->[2] or
            $a->[3] cmp $b->[3] }
        map {
            m/(.*?)\s*(\S+),.*?(\d\d\d\d),(.*$)/;
            [ $_, "$2 $1", $3, $4 ] }
        @$input;

    return \@sorted;
}

1;
