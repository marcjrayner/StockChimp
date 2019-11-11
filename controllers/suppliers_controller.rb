require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/supplier.rb' )
require_relative( '../models/item.rb' )
also_reload( '../models/*' )

get '/suppliers' do
  @suppliers = Supplier.all
  erb (:"supplier/index")
end

get '/suppliers/:id' do
  @supplier = Supplier.find(params['id'].to_i)
  erb (:"supplier/show")
end
