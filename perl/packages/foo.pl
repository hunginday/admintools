# File: foo.pl
require Foo;
#require Foo_Helper; # no need

sub hello {
  print "Hello from main!\n";
}

hello();              # prints "Hello from main!\n";
Foo::hello();         # prints "Hello from Foo!\n";
Foo_Helper::hello();  # prints "Hello from Foo_Helper!\n";
__END__