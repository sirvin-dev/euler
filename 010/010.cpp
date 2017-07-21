#include<stdio.h>
#include"isprime.c"
#include<stdlib.h>
#include<math.h>

int main(int argc, char **argv)
{	long unsigned n=atoi(argv[1]),i,sum=0;

	for(i=2;i<n;i++)
	{	if (isprime(i))
		{	sum+=i;
		}
	}
	printf("%lu\n",sum);
	return 0;
}
