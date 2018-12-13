require 'sinatra'
require './data.rb'


get '/' do
  erb :homepage

end

get '/dessert/:type' do
  type = params[:type].strip
  if type == 'cake'
    @data = CAKE_DATA
  elsif type =='cookie'
    @data = COOKIE_DATA
  else
    @data = MUFFIN_DATA
  end
  erb :bakedgoods
end
