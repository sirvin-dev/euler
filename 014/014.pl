#!/bin/perl
###################################################################
# 
# Project Euler: Problem 014
#
#
#The following iterative sequence is defined for the set of 
# positive integers:
# 
# n->  n/2 (n is even)
# n->  3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the 
# following sequence:
#
#
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing 
# at 1) contains 10 terms. Although it has not been proved yet 
# (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.
######################################################################

$longest = 0;
$longestVal = 0;
$max = 999999;

sub hailCount
	{
	my $hail = shift;
	my $counter = 1;
	while (1)
		{
		if ($hail <= 1)
			{
			return $counter;
			}
		if ($hail % 2 == 0) #even
			{
			$counter++;
			$hail = $hail / 2;
			}
		else #odd
			{
			$counter++;
			$hail = ($hail * 3) + 1;
			}
		}
	}

for ($try=$max; $try>0; $try--)
	{
	$attempt = hailCount($try);
	if ($attempt > $longest)
		{
		$longest = $attempt;
		$longestVal = $try;
		}
	}

print "Longest is: $longestVal which is $longest\n";
