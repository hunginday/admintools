#!/usr/bin/perl
use strict;
use warnings;

use constant {
	FILE_SIZE => 5 #Megabytes
};

#my $hadoop_log_dir = "/data2/mgsys/log/hadoop_log_gw";
#my $file_name = "hadoop.log";

my $hadoop_log_dir = "/home/mgsys/admintools";
my $file_name = "file5M.log";
my $file = $hadoop_log_dir."/".$file_name;

unless (-e $file) {
	print "Hadoop log file doesn't exist!\n";
}

my $filesize = -s $file;
$filesize = $filesize / (1024*1024);

unless ($filesize >= FILE_SIZE) {
	print "Hadoop log file is smaller than ".FILE_SIZE." ($filesize)";
}

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $postfix = sprintf("%04d%02d%02d%02d%02d%02d", $year+1900, $mon, $mday, $hour, $min, $sec);

my $new_file = $file."$postfix";
system ("mv $file $new_file");
system ("gzip -9 $new_file");

exit 0;