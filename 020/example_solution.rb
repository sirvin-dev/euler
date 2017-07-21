def fac(num)
  product = 1
  1.upto(num) { |x| product = product * x }
  return product
end
sum = 0
fac(100).to_s.each_byte { |b| sum+=b.chr.to_i }
puts sum