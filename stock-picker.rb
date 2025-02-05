def stock_picker(prices)
    best_buy = 0
    best_sell = 0
    max_profit = 0
  
    prices.each_with_index do |price, sell_day|
      (0...sell_day).each do |buy_day|
        profit = prices[sell_day] - prices[buy_day]
        if profit > max_profit
          max_profit = profit
          best_buy = buy_day
          best_sell = sell_day
        end
      end
    end
  
    [best_buy, best_sell]
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])
  # => [1,4]