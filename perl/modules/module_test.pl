use v5.10;
use Bestiary::OO;

my $bestiary = Bestiary::OO->new; # class method
say "Animal is ", $bestiary->camel(),
" has weight ", $bestiary->weight();
