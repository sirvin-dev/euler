#!/bin/perl
######################################################
#
# Project Euler: Problem 010
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
#
#
# Answer:
# 142913828922
#
######################################################

$max = 2000000;
$count = 2;
$sum = 0;

while ($count < $max)
	{
	if (isPrime($count) == 1)
		{
		$sum = $sum + $count;
#print "new sum is: $sum \n";
		}
	$count++;
	}

sub isPrime
        {
        my $num = shift;
        my $limit = $num / 2;
        for (my $i=2; $i<=$limit; $i++)
                {
                if ($num % $i == 0)
                        {
#print "$num is not prime \n";
                       return 0;
                        }
                }
#print "$num is prime \n";
        return 1;
        }

print "answer is: $sum\n";
