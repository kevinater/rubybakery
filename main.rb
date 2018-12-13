require 'sinatra'
require './data.rb'


get '/test' do
  'Hello World'
end

get '/anothertest/:name' do
  nameone = params[:name]
  "Hello #{nameone}"
end

get '/' do
  erb :homepage

end

get '/dessert/:type' do
  type = params[:type].strip
  puts type.inspect
  if type == 'cake'
    @data = CAKE_DATA
  elsif type =='cookie'
    @data = COOKIE_DATA
  else
    @data = MUFFIN_DATA
  end
  erb :bakedgoods
end
