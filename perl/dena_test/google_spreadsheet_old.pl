#!/usr/bin/perl

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use Net::Google::DataAPI::Auth::OAuth2;
use Net::OAuth2::AccessToken;
use Net::Google::Spreadsheets;

my $oauth2 = Net::Google::DataAPI::Auth::OAuth2->new(
    client_id => 'xxx',
    client_secret => 'xxx',
    scope => ['http://spreadsheets.google.com/feeds/'],
);

my $tokenstr = 'xxx';

my %opts = (
    profile         => $oauth2->oauth2_webserver,
    access_token    => $tokenstr,
);
my $token = Net::OAuth2::AccessToken->new(%opts);
$oauth2->access_token($token);

$sps = Net::Google::Spreadsheets->new(auth => $oauth2);

# $refresh_token = $oauth2->refresh_token('xxx');
dump \($oauth2->oauth2_webserver);
