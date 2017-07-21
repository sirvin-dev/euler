#!/bin/perl
############################################################################
#
# Project Euler - Problem 007
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# 
# What is the 10001st prime number?
# 
# 
# Answer: 104743
# 
############################################################################

$max = 10001;
$count = 1;
$num = 1;


while ($count < $max)
	{
	$num = $num+2;
	if ( isPrime($num) == 1)
		{
		$count++;
		}	
	}	

print "answer is: $num\n";

sub isPrime
        {
        my $num = shift;
        my $limit = $num / 2;
        for (my $i=2; $i<=$limit; $i++)
                {
                if ($num % $i == 0)
                        {
                        return 0;
                        }
                }
        return 1;
        }