max = 10001
count = 1
num = 1
input = ""

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
print "Enter number to test: "
input = gets.chomp 

while input != "quit" 
        if isPrime(input.to_i)
            puts "#{input} is a prime!"
        else
        puts "#{input} is not a prime!"
    end
    print "Enter number to test: "
    input = gets.chomp
end


