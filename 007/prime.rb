max = 10001
count = 1
num = 1

def isPrime(x)
    limit = x / 2
    i = 2
    while i <= limit
        if (x % i == 0)
                return false
        end
        i += 1
    end
    return true
end


while count 
    num += 2
        if isPrime(num)
            puts "Prime number #{count} is #{num}\n"
            count += 1  
        end
    end

print "Prime number #{max} is #{num}\n"

