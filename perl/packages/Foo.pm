# File: Foo.pm

1;  # keep require happy

package Foo;

sub hello {
  print "Hello from Foo!\n";
}

package Foo_Helper;

sub hello {
  print "Hello from Foo_Helper!\n";
}
__END__