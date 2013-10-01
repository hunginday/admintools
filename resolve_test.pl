#!/usr/bin/perl
use strict;
use warnings;

use Net::DNS;

my $hostname = 'db_blood_m.local.denagame.mobage.com';
=co
my $res = Net::DNS::Resolver->new(
  nameservers => [qw(10.1.0.157)],
);
my $query = $res->search($hostname);

if ($query) {
  foreach my $rr ($query->answer) {
    next unless $rr->type eq "A";
    print "Found an A record: ".$rr->address."\n";
  }
}
=cut

my $HOST_IP = resolve_name($hostname);
print "IP=$HOST_IP\n";

sub resolve_name {
        my ($domain) = @_;

        my $result;
        eval {
                my $query = Net::DNS::Resolver->new()->search($domain);
                use Data::Dumper;
                print "". Dumper($query);
                my @hosts = map { $_->address() } grep { $_->type() eq 'A' } $query->answer();
                $result = $hosts[0];
        };
        if ($@) {
                print("ERROR: Could not resolve name: $domain");
                print("Maybe you forgot to specify --shard option?");
                die;
        }
        return $result;
}

