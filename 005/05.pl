#!/bin/perl
############################################################################
#
# Project Euler - Problem 005
#
# 2520 is the smallest number that can be divided by each of the numbers 
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of 
# the numbers from 1 to 20?
#
# Answer: 232792560
############################################################################

$max = 20;
$count = $max;

while(1)
	{
	if (isValid($count)==1)
		{
		print "answer is: $count\n";
		last;
		}
	else
		{
		$count = $count + $max;
		}
	}


sub isValid
        {
        my $num = shift;
        for (my $i=$max; $i>=2; $i--)
                {
                if ($num % $i != 0)
                        {
                        return 0;
                        }
                }
        return 1;
        }
