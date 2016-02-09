#creating a server using Sinatra
require 'sinatra'

get '/' do
  "Jallo!"
end

get '/sinatra' do
  "<h1>Sinatra Rocks!</h1>"
end
