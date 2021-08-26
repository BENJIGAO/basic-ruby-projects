# frozen_string_literal: true

def stock_picker(stocks)
  highest_profit = 0
  lowest_day = 0
  highest_day = 0
  stocks.each_index do |day|
    for i in (day + 1)...stocks.length
      current_profit = stocks[i] - stocks[day]
      next unless current_profit > highest_profit
      
      highest_profit = current_profit
      highest_day = i
      lowest_day = day
    end
  end
  [lowest_day, highest_day]
end

p stock_picker([6, 2, 5, 4, 3])
# => [1, 2]
