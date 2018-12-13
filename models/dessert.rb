class Dessert

  attr_accessor :description, :price


  def initialize (description, price)
    @description = description
    @price = price

  end

  def image_url
    @description.delete(" ") + '.jpg'

  end


end
