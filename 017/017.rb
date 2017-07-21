=begin
Problem 17

If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of 
"and" when writing out numbers is in compliance with British usage.

=end

$count = 1
$numSum = 0
$max = 1000

while $count <= $max
    dig = $count
    print "for #{$count} "

    if dig == 1000 # one thousand
        $numSum += 11
        dig = 0
        print "thousands = 1"
        end

    if dig < 1000 && dig >= 100 # has 3 digits
        hund = dig / 100
        print "hunds = #{hund} "
        case hund
        when 1 # one hundred
            $numSum += 10
        when 2 # two hundred
            $numSum += 10
        when 3 # three hundred
            $numSum += 12
        when 4 # four hundred
            $numSum += 11
        when 5 # five hundred
            $numSum += 11
        when 6 # six hundred
            $numSum += 10
        when 7 # seven hundred
            $numSum += 12
        when 8 # eight hundred
            $numSum += 12
        when 9 # nine hundred
            $numSum += 11
        end   

        if dig % hund > 0 # include the "and"
            $numSum += 3
            end
        
        dig -= hund * 100
    end

    if dig < 100 && dig >= 10 # has 2 digits
        tens = dig / 10
        print "tens = #{tens} "
        case tens
        when 1 # teens will be a special case
            case dig
            when 11 # eleven
                $numSum += 6
                dig = 0
            when 12 # twelve
                $numSum += 6
                dig = 0
            when 13 # thirteen
                $numSum += 8
                dig = 0
            when 14 # fourteen
                $numSum += 8
                dig = 0
            when 15 # fifteen
                $numSum += 7
                dig = 0
            when 16 # sixteen
                $numSum += 7
                dig =0
            when 17 # seventeen
                $numSum += 9
                dig = 0
            when 18 # eighteen
                $numSum += 8
                dig = 0
            when 19 # nineteen
                $numSum += 8
                dig = 0
            end
        when 2 # twenty
            $numSum += 6
        when 3 # thirty
            $numSum += 6
        when 4 # forty 
            $numSum += 5
        when 5 # fifty
            $numSum += 5
        when 6 # sixty
            $numSum += 5
        when 7 # seventy
            $numSum += 7
        when 8 # eighty
            $numSum += 6
        when 9 # ninety
            $numSum += 6
        end   
        if dig > 0 # wasn't one of the teens
            dig -= (tens * 10)
            end
    end

    if dig < 10 && dig > 0 # has 1 digits
        print "digits = #{dig} "
        case dig
        when 1 # one
            $numSum += 3
        when 2 # two
            $numSum += 3
        when 3 # three
            $numSum += 5
        when 4 # four
            $numSum += 4
        when 5 # five
            $numSum += 4
        when 6 # six
            $numSum += 3
        when 7 # seven
            $numSum += 5
        when 8 # eight
            $numSum += 5
        when 9 # nine
            $numSum += 4
        end   
    end
print " sum = #{$numSum}\n"
    $count += 1
    hund = 0
    tens = 0
    dig = 0
end

puts "Count is: #{$numSum}"