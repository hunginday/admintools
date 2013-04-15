#!/usr/bin/perl

use constant {
	FILE_SIZE => 1024
};

my $hadoop_log_dir = "/data2/mgsys/log/hadoop_log_gw";
my $file_name = "hadoop.log";

unless (-e $hadoop_log_dir."/".$file_name) {
	print "Hadoop log file doesn't exist!";
}


