#!/usr/bin/perl

use Data::Dump qw(dump); # CPAN module
use Net::Google::DataAPI::Auth::OAuth2;
use Net::OAuth2::AccessToken;
use Net::Google::Spreadsheets;

my $oauth2 = Net::Google::DataAPI::Auth::OAuth2->new(
    client_id => 'xxx',
    client_secret => 'xxx',
    scope => ['http://spreadsheets.google.com/feeds/'],
);

my %opts = (
    profile         => $oauth2->oauth2_webserver,
    refresh_token => 'xxx',
);
my $token = Net::OAuth2::AccessToken->new(%opts);
$oauth2->access_token($token);
$oauth2->refresh_token();

my $client = Net::Google::Spreadsheets->new(auth => $oauth2);
my @spreadsheets = $client->spreadsheets();
my $spreadsheet_by_title = $client->spreadsheet(
    {
        title => 'DB Import - Rage'
    }
  );

my $worksheet = $spreadsheet_by_title->worksheet(
    {
        title => 'main'
    }
  );

my @rows = $worksheet->rows();

dump \@rows;
