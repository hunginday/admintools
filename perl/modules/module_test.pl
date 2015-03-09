use v5.10;
use Bestiary::OO;

my $bestiary = Bestiary::OO->new; # class method
say "Animal is ", $bestiary->camel(),
" has weight ", $bestiary->weight();


use Bestiary qw(camel $weight);
say "Animal is ", camel(), " has weight $weight";

print "end\n";
