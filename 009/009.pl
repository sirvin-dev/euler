#!/bin/perl
##############################################################
#
# Project Euler: Problem 009
#
#
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
###############################################################

$max = 1000;
$counta = 1;

while ($counta <= $max)
	{
	$countb = $counta+1;
	while ($countb <= $max)
		{
		$countc = $countb+1;
		while ($countc <= $max)
			{
#			print "counta: $counta countb: $countb countc: $countc\n";

			if ( ($counta * $counta) + ($countb * $countb) == ($countc * $countc) )
				{
				if (($counta + $countb + $countc) == $max)
					{
#					print "counta: $counta countb: $countb countc: $countc\n";
					$founda = $counta;
					$foundb = $countb;
					$foundc = $countc;
					$counta = $max;
					$countb = $max;
					$countc = $max;
					}
				}
			$countc++;
			}
		$countb++;
		}
	$counta++;
	}

$answer = $founda * $foundb * $foundc;

print "answer is: $founda * $foundb * $foundc = $answer\n";
