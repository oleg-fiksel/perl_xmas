#!/usr/bin/perl
use warnings;
#dont use strict

use Time::localtime;
use Getopt::Std;

# maximum size of the tree
my $max = 23;

my %opts;
getopts('m:d:', \%opts);

$date{month} = localtime->mon()+1;
$date{day} = localtime->mday();

$date{month} = $opts{m} if defined $opts{m};
$date{day} = $opts{d} if defined $opts{d};

my $x = $date{day};
$x += 25 if $date{month} == 01;

sub parabola{
	my ($a,$d,$e,$x) = @_;
	return $a*($x-$d)**2+$e;
}

$y = parabola(-1/60,25,$max,$x);

printf "%15s%s\n",$_%=($y-1),$_=5**$_,$r=int rand 10,s/$r/+/g,s/\d/./g for 1..$y;