def stock_picker(prices)
  return nil if prices.length < 2  # Must have at least two days

  best_buy = nil
  best_sell = nil
  max_profit = 0
  min_price = prices[0]
  min_index = 0

  prices.each_with_index do |price, sell_day|
    # Update min_price only if we find a new minimum before the current day
    if price < min_price
      min_price = price
      min_index = sell_day
    end

    # Calculate profit from this min_price to current price
    profit = price - min_price

    # If this is the best profit so far, update the best days
    if profit > max_profit
      max_profit = profit
      best_buy = min_index
      best_sell = sell_day
    end
  end

  return [] if max_profit == 0  # No valid trade possible
  [best_buy, best_sell]
end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])
  # => [1,4]

