def stock_picker(prices)
    res = prices.each_with_index.with_object([]) do |(buy_val, i), res|
      highest_val = prices[i..].max
      highest_idx = prices[i..].each_with_index.max[1] + i
      res << [highest_val - buy_val, i, highest_idx]
    end.max_by(&:first)
   
    res[1..2] # return the pair of days
end

   
pickday = stock_picker([17,3,6,9,15,8,6,1,10])

print pickday

