#!/usr/bin/perl
use strict;
use warnings;

require Demo::StringUtils;
print zombify("i want brains"); # "r wrnt brrrns"

require Demo::StringUtils2;
print Demo::StringUtils2::zombify("i want brains"); # "r wrnt brrrns"
