require More_Foo;

1;  # keep require happy

package Foo;

sub hello {
  print "Hello from Foo!\n";
}