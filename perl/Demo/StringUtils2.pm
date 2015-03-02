use strict;
use warnings;

package Demo::StringUtils2;

sub zombify {
    my $word = shift @_;
    $word =~ s/[aeiou]/r/g;
    return $word;
}

return 1;
