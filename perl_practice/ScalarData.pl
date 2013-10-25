#!/usr/bin/perl -w

print "The answer is ", 6 * 7, ".\n";


@rocks = qw {flintstone slate rubble};
print "quartz @rocks limestone\n";

$email = "hungtd\@gmail.com";
print "$email\n";

@fred = qw(eating rocks is wrong);
$fred = "right"; # we are trying to say "this is right[3]"
print "this is $fred[3]\n"; # prints "wrong" using $fred[3]
print "this is ${fred}[3]\n"; # prints "right" (protected by braces)
print "this is $fred"."[3]\n"; # right again (different string)
print "this is $fred\[3]\n"; # right again (backslash hides it)



exit 0;