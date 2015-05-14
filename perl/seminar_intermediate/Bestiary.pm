package Bestiary 1.001;

use parent qw(Exporter);

our @EXPORT = qw(camel);        # Symbols to be exported by default
our @EXPORT_OK = qw($weight);   # Symbols to be exported on request

### Include your variables and functions here

sub camel { "one–hump dromedary" }

$weight = 1024;

1; # end with an expression that evaluates to true
