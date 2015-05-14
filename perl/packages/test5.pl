#!/usr/bin/perl
use v5.12;

$name = 'Amelia'; # compile–time error
$main::name = 'Amelia';

$type = 'Camel'; # compile–time error
$main::type = 'Camel';
