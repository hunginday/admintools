#!/usr/bin/perl
use strict;
use warnings;
use Time::Local;

use constant {
	FILE_SIZE => 1*1024 #Megabytes
};

my $hadoop_log_dir = "/data/mgsys/log";
my $file_name = "ngserver.log";
my $file = $hadoop_log_dir."/".$file_name;

unless (-e $file) {
	print "$file_name log file doesn't exist!\n";
	goto CLEAN;
}


# Compress ngserver log
my $fsize = -s $file;
$fsize = $fsize / (1024*1024);

unless ($fsize >= FILE_SIZE) {
	print "$file_name file is smaller than ".FILE_SIZE." ($fsize)\n";
	goto CLEAN;
}

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $postfix = sprintf("%04d%02d%02d%02d%02d%02d", $year+1900, $mon+1, $mday, $hour, $min, $sec);

my $new_file = $file.".$postfix";
my $rt = system ("mv $file $new_file");
unless ($rt == 0) {
	print "mv file failed\n";
	goto CLEAN;
}
$rt = system ("gzip -9 $new_file");
unless ($rt == 0) {
	print "gzip file failed\n";
	goto CLEAN;
}


# Clean ngserver log
CLEAN:
my $old_time = timelocal(0,0,0, (localtime(time() - 3 * 24 * 3600))[3,4,5]);
my @dir = ($hadoop_log_dir);

for my $dir (@dir) {
        opendir(DIR, $dir);
        while (my $file = readdir(DIR)) {
                next if ($file =~ /^\./);
                next unless ($file =~ /ngserver\.log\.(\d\d\d\d)(\d\d)(\d\d)(\d\d)(\d\d)(\d\d)\.gz/);
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


print "Successfully done.\n";
exit 0;
