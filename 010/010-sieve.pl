#!/bin/perl
######################################################
#
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

$max = 10000;
$count = 3;
$sum = 0;
@siv = (1..$max);

for ($i=0;$i<$max;$i++)
	{
	$siv[$i]=0;
	}
$siv[2]=1;

while ($count < $max)
	{
	if (($siv[$count] != 1) && ($siv[$count] != 2)) 
		{
		if (isPrime($count) == 1)
			{
			$siv[$count] = 1; # is prime
			my $factor = 2;
			my $val = $count;
			while( ($val*$factor) <= $max)
				{
				my $val = $factor * $count;
				$siv[$val] = 2; # mark that all muliples are not prime
				$factor++;
				}
			}
		else
			{
			$siv[$count] = 2; #not prime
			}
		}
	$count = $count+2;
	}

sub isPrime
        {
        my $num = shift;
#print "entering isPrime for $num \n";
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

# add up all primes

for ($num1 = 0; $num1 < $max; $num1++)
	{
	if ( $siv[$num1] == 1)
		{
		$sum = $sum + $num1;
		}
	}

print "answer is: $sum\n";
