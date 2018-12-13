require 'csv'
require './data.rb'

CSV.open('public/csv_data.csv', 'wb') do |csv|
  csv << ["description", "price", "type"]
  ALL_DATA.each do |dessert|
    csv << [dessert.description, dessert.price, dessert.get_type]
  end
end
