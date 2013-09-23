#!/usr/bin/perl
use strict;
use warnings;

use Encode;

sub check_utf8($) {
    my $str_ref = shift;
    return ($$str_ref =~ /^(?:[\x01-\x7F]|(?:[\xC2-\xDF][\x80-\xBF])|(?:\xE0[\xA0-\xBF][\x80-\xBF])|(?:[\xE1-\xEC][\x80-\xBF][\x80-\xBF])|(?:\xED[\x80-\x9F][\x80-\xBF])|(?:[\xEE-\xEF][\x80-\xBF][\x80-\xBF])|(?:\xF0[\x90-\xBF][\x80-\xBF][\x80-\xBF])|(?:[\xF1-\xF3][\x80-\xBF][\x80-\xBF][\x80-\xBF])|(?:\xF4[\x80-\x8F][\x80-\xBF][\x80-\xBF]))*$/);
}

open (MYFILE, 'sample_chinese.log');
open (F932, "+>:encoding(CP932)", "file.932");
open (FUTF8, "+>:encoding(UTF-8)", "file.utf8");

my $line = "";
my $line2 = "";

while (<MYFILE>) {
 	chomp;
	if (check_utf8(\$_)) {
		$line = $_;
		$line2 = decode('utf-8', $_);
		print $line2."\n";

 		print $line."\n";
		print FUTF8 $line."\n";
		print FUTF8 $line2." (decode)\n";

		Encode::from_to($line, 'utf-8', 'cp932');

		print $line."\n";
		print F932 $line."\n";
                print F932 $line2." (decode)\n";
	}
}

close (MYFILE); 
close (F932);
close (FUTF8);

exit 0;
