use v5.10;
use Bestiary::OO;
use Bestiary::Horse;

use Data::Dump qw(dump); # CPAN module

my $bestiary = Bestiary::OO->new; # class method
say "Animal is ", $bestiary->camel(),
" has weight ", $bestiary->weight();


use Bestiary qw(camel $weight);
say "Animal is ", camel(), " has weight $weight";

print "\n\n";

my $steed = Bestiary::Horse->new(color => "dun");
dump $steed;

print "end\n";


# use Bestiary;                             # Import @EXPORT symbols
# use Bestiary ();                          # Import nothing
# use Bestiary qw(ram @llama);              # Import the ram function and @llama array
# use Bestiary qw(:camelids);               # Import $camel and @llama
# use Bestiary qw(:DEFAULT);                # Import @EXPORT symbols
# use Bestiary qw(/am/);                    # Import $camel, @llama, and ram
# use Bestiary qw(/^\$/);                   # Import all scalars
# use Bestiary qw(:critters !ram);          # Import the critters, but exclude ram
# use Bestiary qw(:critters !:camelids);    # Import critters, but no camelids
