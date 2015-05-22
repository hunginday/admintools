package Person;
use Carp;

my %Fields = (
    "Person::name" => "unnamed",
    "Person::race" => "unknown",
    "Person::aliases" => [],
);

# The next declaration guarantees we get our own autoloader.
use subs qw(name race aliases);

sub new {
    print "Person::new() called\n";
    my $invocant = shift;
    my $class = ref($invocant) || $invocant;
    my $self = { %Fields, @_ }; # clone like Class::Struct
    bless $self, $class;
    return $self;
}

sub AUTOLOAD {
    #print "Person::AUTOLOAD() called\n";
    my $self = shift;

    # only handle instance methods, not class methods
    # croak "$self not an object" unless reftype($self);

    my $name = our $AUTOLOAD;
    #print "name: $name called\n";

    return if $name =~ /::DESTROY$/;
    
    unless (exists $self->{$name}) {
        croak "Can't access '$name' field in $self";
    }

    if (@_) { return $self->{$name} = shift }
    else { return $self->{$name} }
}
