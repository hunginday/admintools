#!/usr/bin/perl
use strict;
use warnings;

use constant {
	FILE_SIZE => 1024
};

#my $hadoop_log_dir = "/data2/mgsys/log/hadoop_log_gw";
#my $file_name = "hadoop.log";

my $hadoop_log_dir = "/home/mgsys/admintools";
my $file_name = "compressHadoopLog.pl";
my $file = $hadoop_log_dir."/".$file_name;

unless (-e $file) {
	print "Hadoop log file doesn't exist!\n";
}

my $filesize = -s $file;
print "Size: $filesize\n";



exit 0;