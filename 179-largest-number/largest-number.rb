# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
    # Sort the array, convert to a string & concatenate in both possible orders, then compare
    if nums.sum == 0
        return "0"
    else
        nums.sort { |a, b| "#{b}#{a}" <=> "#{a}#{b}" }.join
    end
end