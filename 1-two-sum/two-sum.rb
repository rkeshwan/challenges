# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)

    nums.each_with_index do |num, index|
        output = target - num
        output_index = nums.index(output)

         next if output_index.nil? || output_index == index
          return [index, output_index]
        
    end
    
end