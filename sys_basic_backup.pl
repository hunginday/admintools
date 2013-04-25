#!/usr/bin/perl
use strict;
use warnings;

my $log_dir = "/monitoring/sys_basic";
my $name = "sysbasic.log";
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $postfix = sprintf("%04d%02d%02d%02d%02d%02d", $year+1900, $mon+1, $mday, $hour, $min, $sec);
my $file_name = $log_dir."/".$name.".$postfix";

open (log_file, '>', $file_name);

echo_title("route -n");
my $rs = `route -n`; 
print log_file $rs;

echo_title("crontab -uroot -l");
$rs = `crontab -uroot -l`; 
print log_file $rs;

echo_title("crontab -umgsys -l");
$rs = `crontab -umgsys -l`; 
print log_file $rs;

close (log_file); 
exit 0;

sub echo_title
{
	my ($text) = @_;
	print log_file "====================\n";
	print log_file "$text\n";
	print log_file "====================\n";
}
