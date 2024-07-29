price_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(prices)
  return nil if prices.nil? || prices.length < 2

  min_price = prices[0]
  min_day = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |current_price, current_day|
    next if current_day == 0  # Skip the first day

    potential_profit = current_price - min_price

    if potential_profit > max_profit
      max_profit = potential_profit
      buy_day = min_day
      sell_day = current_day
    end

    if current_price < min_price
      min_price = current_price
      min_day = current_day
    end
  end

  [buy_day, sell_day]
end

# Test the function with the given example
puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]).inspect  # Output: [1, 4]
