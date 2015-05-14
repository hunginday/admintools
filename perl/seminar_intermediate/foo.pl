require Foo;
#require More_Foo;

sub hello {
  print "Hello from main!\n";
}

hello();              # prints "Hello from main!\n";
Foo::hello();         # prints "Hello from Foo!\n";
Foo::hello_2();       # prints "Still in Foo!\n";