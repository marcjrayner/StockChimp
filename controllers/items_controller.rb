require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/supplier.rb' )
require_relative( '../models/item.rb' )
also_reload( '../models/*' )

get '/inventory' do
  @items = Item.all
  erb ( :"item/index" )
end

get '/inventory/new' do
  @suppliers = Supplier.all
  erb (:"item/new")
end

get '/inventory/:id' do
  @item = Item.find(params['id'].to_i)
  erb (:"item/show")
end

get '/inventory/:id/edit' do
  @item = Item.find(params['id'].to_i)
  erb (:"item/edit")
end

post '/inventory' do
  item = Item.new(params)
  item.save
  redirect to '/inventory'
end

post '/inventory/:id' do
  item = Item.new(params)
  item.update
  redirect to '/inventory'
end
