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
