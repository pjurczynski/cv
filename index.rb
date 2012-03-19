require 'sinatra'
require 'haml'
require 'sass'
require 'sinatra/content_for'

get '/' do
  @body_class = :cv
  haml :index
end

get '/pl' do
  @body_class = :cv
  haml :index_pl
end

# TODO: Why this isn't working? @body_class
get '/portfolio' do
  @body_class = :slides
  haml :portfolio
end

get '/portfolio/pl' do
  @body_class = :slides
  haml :portfolio, :layout => :slides
end
