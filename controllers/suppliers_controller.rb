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

get '/suppliers/new' do
  erb (:"supplier/new")
end

get '/suppliers/:id' do
  @supplier = Supplier.find(params['id'].to_i)
  erb (:"supplier/show")
end

get '/suppliers/:id/edit' do
  @supplier = Supplier.find(params['id'].to_i)
  erb (:"supplier/edit")
end

post '/suppliers' do
  supplier = Supplier.new(params)
  supplier.save
  redirect to '/suppliers'
end

post '/suppliers/:id' do
  supplier = Supplier.new(params)
  supplier.update
  redirect to '/suppliers'
end
