#!/usr/bin/perl

use strict;
use Time::Local;

my $old_time = timelocal(0,0,0, (localtime(time() - 30 * 24 * 3600))[3,4,5]);
my @dir = ('/data2/mgsys/log/hadoop_log_gw');

for my $dir (@dir) {
        opendir(DIR, $dir);
        while (my $file = readdir(DIR)) {
                next if ($file =~ /^\./);
                next unless ($file =~ /\.(\d\d\d\d)(\d\d)(\d\d)(\d\d)(\d\d)(\d\d)\.gz/);
                print ("file=$file\n");
		my $time;
                eval {
                        $time = timelocal(0,0,0,$3,$2-1,$1);
                };
                next if ($@);
                next if ($time >= $old_time);

                my $path = "$dir/$file";
                print "delete file: $path\n";
                unlink($path);
        }
        closedir(DIR);
}