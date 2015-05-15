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

# We have a huge list of names, and we want to sort them alphabetically by last name, first name, then middle name. However, in our list names are formatted like "Arthur C. Clarke” (first name, middle name, then last name).
# URL of the list of names:
# https://www.dropbox.com/s/1wfsbaj37x86r24/data_name.dat?dl=0

# Write a module named NameSort providing function name_sort( ) and use that module to sort the name list above (without changing names).