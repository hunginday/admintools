use strict;
use warnings;

package Camel;

sub new {
    my $class = shift @_;
    print "class: $class\n";
    return bless { "legs" => 4, "colour" => "brown" }, $class;
}

1;
