# @param {Integer} x
# @return {Integer}
def reverse(x)
if x < 0
    negative = true
    x = -x
end

  reverse_num = 0
  while x != 0
    num = x % 10
    reverse_num = reverse_num * 10 + num
    x /= 10
  end
  reverse_num = -reverse_num if negative
  if (-2**31..2**31).include?(reverse_num)
    reverse_num
  else
    0
  end
end