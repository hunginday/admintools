#!/usr/bin/perl -w

use strict;

use vars qw ($foo); # or "our $foo" if you're using 5.6

$foo = "global value";

print "\$foo: $foo\n"; # prints "global value"

print "mysub  result '", &mysub(), "'\n"; #"global value"
print "localsub result '", &localsub(), "'\n"; # "local value"
print "no sub result '", &showfoo(), "'\n"; #"global value"

{
 my $foo = "nake value";
 print "nake result '", &showfoo(), "'\n";
}

print "end\n";


sub mysub {
 my $foo = "my value";
 showfoo(); # 
}

sub localsub {
 local $foo = "local value";
 showfoo(); # ALWAYS prints "local value"
}

sub showfoo {
 return $foo;
}
