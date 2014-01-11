#!/usr/bin/perl

use strict;
use Time::Local;

my $old_time = timelocal(0,0,0, (localtime(time() - 90 * 24 * 3600))[3,4,5]);
my $month_time = timelocal(0,0,0, (localtime(time() - 30 * 24 * 3600))[3,4,5]);

my @dir = ('/data2/mgsys/log');

for my $dir (@dir) {
	opendir(DIR, $dir);
	while (my $file = readdir(DIR)) {
		next if ($file =~ /^\./);
		print ("file=$file\n");
		my $path = "$dir/$file";
		my $time;
		if ($file =~ /\.(\d\d\d\d)(\d\d)(\d\d)$/) {
			eval {
				$time = timelocal(0,0,0,$3,$2-1,$1);
			};
			next if ($@);
			next if ($time >= $month_time);
			print "gzip -9 file: $path\n";
			system ("gzip -9 $path");
		} elsif ($file =~ /\.(\d\d\d\d)(\d\d)(\d\d)\.gz/) {
			eval {
				$time = timelocal(0,0,0,$3,$2-1,$1);
			};
			next if ($@);
			next if ($time >= $old_time);
			print "delete gzip file: $path\n";
			unlink($path);
		}
	}
	closedir(DIR);
}

