require 'sinatra'
require 'haml'
require 'sass'

get '/' do
  haml :index
end

get '/portfolio' do
  haml :portfolio, :layout => :slides
end

get '/test' do
  haml :test, :layout => :clean
end
