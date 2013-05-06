#!/usr/bin/perl
use strict;
use warnings;

use constant {
	FILE_SIZE => 5*1024 #Megabytes
};

my $hadoop_log_dir = "/data2/mgsys/log/hadoop_log_gw";
my $file_name = "hadoop.log";

my $file = $hadoop_log_dir."/".$file_name;

unless (-e $file) {
	print "Hadoop log file doesn't exist!\n";
	exit 1;
}

my $fsize = -s $file;
$fsize = $fsize / (1024*1024);

unless ($fsize >= FILE_SIZE) {
	print "Hadoop log file is smaller than ".FILE_SIZE." ($fsize)\n";
	exit 2;
}

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $postfix = sprintf("%04d%02d%02d%02d%02d%02d", $year+1900, $mon+1, $mday, $hour, $min, $sec);

my $new_file = $file.".$postfix";
my $rt = system ("mv $file $new_file");
unless ($rt == 0) {
	print "mv file failed\n";
	exit 3;
}
$rt = system ("gzip -9 $new_file");
unless ($rt == 0) {
	print "gzip file failed\n";
	exit 4;
}

print "Successfully done.\n";
exit 0;
