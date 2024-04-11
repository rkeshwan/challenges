# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    num = 1..n
    array = []

    num.each do |i|
        if (i % 3 == 0) && (i % 5 == 0)
            array << "FizzBuzz"
        elsif i % 5 == 0
            array << "Buzz"
        elsif i % 3 == 0
            array << "Fizz"
        else
            array << i.to_s
        end 
    end
    array
end