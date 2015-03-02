#!/usr/bin/perl
use strict;
use warnings;

require Demo::StringUtils;
require Demo::StringUtils2;

print zombify("i want brains"); # "r wrnt brrrns"

print Demo::StringUtils2::zombify("i want brains"); # "r wrnt brrrns"
