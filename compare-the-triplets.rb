#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
    a_counter = 0
    b_counter = 0
    i = 0

    while i <= 2
        if a[i] > b[i]
            a_counter += 1
            i += 1
        elsif b[i] > a[i]
            b_counter += 1
            i += 1
        elsif b[i] == a[i]
            i += 1
        end
    end
   [a_counter, b_counter]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()

