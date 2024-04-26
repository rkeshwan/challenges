#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
    stairs = 1..n
    print = "#"
    stairs.each do |stair|
        puts (print*stair).rjust(n)
    end
end

n = gets.strip.to_i

staircase n