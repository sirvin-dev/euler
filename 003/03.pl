#!/bin/perl
############################################################################
#
# Project Euler - Problem 003
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
############################################################################

$max = 600851475143;
$count = 1;
$large = 0;
$square = sqrt($max);

while ( $count < $square)
	{
	if ($max % $count == 0)
		{
		if (isPrime($count)==1)
			{
			$large = $count;
			}
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
                        return 0;
                        }
                }
        return 1;
        }


print "Largest is: $large \n";
