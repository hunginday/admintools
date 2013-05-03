#!/usr/bin/perl
use strict;
use warnings;

my $log_dir = "/monitoring/sys_basic";
my $name = "sysbasic.log";
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $postfix = sprintf("%04d%02d%02d%02d%02d%02d", $year+1900, $mon+1, $mday, $hour, $min, $sec);
my $file_name = $log_dir."/".$name.".$postfix";

my @commands = ("route -n", "crontab -uroot -l", "crontab -umgsys -l");

open (log_file, '>', $file_name);

foreach (sort @commands){
	echo_title($_);
	my $rs = `$_`;
	print log_file $rs;
}

close (log_file); 
exit 0;

sub echo_title {
	my ($text) = @_;
	print log_file "====================\n";
	print log_file "$text\n";
	print log_file "====================\n";
}
