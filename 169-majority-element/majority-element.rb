# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    # Calculate size of nums array
    n = nums.length
    array = nums.uniq
    # Store all elements from nums array in new array that have more than 50% occurence
    new = []
    #Iterate over each element in nums array
    array.each do |num|
        # Find the element that makes up more than 50% of the size of nums array
        if nums.count(num) > (n/2)
            new << num
        end
    end
    new.uniq.first
end