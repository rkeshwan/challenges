#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    # Write your code here
    counter_pos = 0.to_f.round(6)
    counter_neg = 0.to_f.round(6)
    counter_o = 0.to_f.round(6)
    n = (arr.length)
     
    arr.each do |num|
        if num > 0
            counter_pos += 1
            
        elsif num < 0
            counter_neg += 1
        elsif num == 0
            counter_o += 1
        end
    end
    puts (counter_pos / n)
    puts (counter_neg / n)
    puts (counter_o / n)

end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
