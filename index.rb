require 'sinatra'
require 'haml'
require 'sass'
require 'sinatra/content_for'
require 'sinatra/namespace'

before do
  @prefix = ''
  @url = request.path_info
end

get '/?' do
  @body_class = :cv
  haml :index
end

get '/portfolio/?' do
  @body_class = :slides
  haml :portfolio
end

namespace '/pl/?' do
  get do
    @body_class = :cv
    @prefix = '/pl'
    haml :index_pl
  end

  get '/portfolio/?' do
    @body_class = :slides
    @prefix = '/pl'
    haml :portfolio_pl
  end
end
