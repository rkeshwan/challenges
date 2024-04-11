# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
    prices.each_with_index do |price, i|
      if i > 0 && price > prices[i-1]
       profit += price - prices[i-1]
      end
    end
  profit
end