#!/usr/bin/perl
use strict;
use warnings;

my $log_dir = "/monitoring";
my $file_name = "sysbasic.log";
my $file = $log_dir."/".$file_name;

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $postfix = sprintf("%04d%02d%02d%02d%02d%02d", $year+1900, $mon+1, $mday, $hour, $min, $sec);

my $new_file = $file.".$postfix";

open (log_file, '>>data.txt');
print log_file "Bob\n";
close (log_file); 







exit 0;