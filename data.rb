require './models/cake.rb'
require './models/cookie.rb'
require './models/muffin.rb'

cake_data = [['ice cream', 15], ['chocolate', 20], ['carrot', 18]]

cookie_data = [['chocolate chip', 5], ['oatmeal', 3], ['sugar', 4]]

muffin_data = [['blueberry', 7], ['raisin', 4], ['banana', 6]]

CAKE_DATA = cake_data.map do |cake_array|
  Cake.new(cake_array[0], cake_array[1])
end

COOKIE_DATA = cookie_data.map do |cookie_array|
  Cookie.new(cookie_array[0], cookie_array[1])
end

MUFFIN_DATA = muffin_data.map do |muffin_array|
  Muffin.new(muffin_array[0], muffin_array[1])
end

ALL_DATA = CAKE_DATA + COOKIE_DATA + MUFFIN_DATA
