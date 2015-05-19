package NameSort;

use strict;
use parent qw(Exporter);
#use Data::Dumper;
#use warnings;

our @EXPORT = qw(name_sort); 

sub name_sort {
   my ($data) = @_; 
   return sort _sort_by_name_and_birth @$data;
}

sub _get_name_for_sort {
    print "_get_name_for_sort\n";
    my ($person_info) = @_; 
    my $name = (split /,/, $person_info)[0];
    my @splitted_name = split / /, $name;
    my $last_name = pop @splitted_name;
    return $last_name . ' ' . join (' ', @splitted_name); 
}

sub _get_year_of_birth {
   print "_get_year_of_birth\n";
   my ($person_info) = @_; 
   my $birth_day = (split /,/, $person_info)[1];
   my @splitted_birth_day = split / /, $birth_day;
   return $splitted_birth_day[-1];
}

sub _sort_by_name_and_birth {
   my $name_a = _get_name_for_sort($a);
   my $name_b = _get_name_for_sort($b);
   if ($name_a eq $name_b) {
        my $year_a = _get_year_of_birth($a);
        my $year_b = _get_year_of_birth($b);
        return $year_a <=> $year_b;
   } else {
       return $name_a cmp $name_b;
   }   
}