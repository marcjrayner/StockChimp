require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/items_controller')
require_relative('controllers/suppliers_controller')
also_reload( 'models/*' )


get '/' do
  erb(:index)
end
