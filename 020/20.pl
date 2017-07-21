#!/bin/perl
###########################################################
# Project Euler: Problem 020
#
#
# n! means n x (n - 1)  ...  3  2  1
# 
# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!
#############################################################

$max = 100;
$count = $max - 1;
$sum = $max;

while ( $count > 0)
	{
	$sum = $sum * ($count);
	$count--;
	}

$length = length($sum);
@chars = split("", $sum);

$sum2 = 0;
while ($length > 0)
	{
	$sum2 = $sum2 + $chars[$length - 1];
	$length--;
	}
print "sum is: $sum\n";
print "answer is: $sum2\n";
