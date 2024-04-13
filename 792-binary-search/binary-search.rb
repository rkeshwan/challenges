# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    if nums.include?(target)
        p nums.find_index(target)
    else
        -1
    end
end