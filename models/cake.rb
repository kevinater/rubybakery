require './models/dessert.rb'

class Cake < Dessert

  def get_type
    'cake'
  end




end

# x = Cake.new('chocolate', 20)
#
# puts x.description
# puts x.getType
