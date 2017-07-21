=begin
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end

max = 100
count = 1
product = 1
sum = 0

while (count <= max)
    product *= count
    count += 1
end

# Convert the product to a string
product = product.to_s

# Loop through each character in the string, convert to int and add to sum
product.each_char{|char| sum += product[char].to_i}

print "The answer is: ", sum, "\n"