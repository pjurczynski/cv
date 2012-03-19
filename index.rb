require 'sinatra'
require 'haml'
require 'sass'
require 'sinatra/content_for'

before do
  @suffix = ''
end

get '/' do
  @body_class = :cv
  haml :index
end

get '/pl' do
  @body_class = :cv
  @suffix = '/pl'
  haml :index_pl
end

get '/portfolio' do
  @body_class = :slides
  haml :portfolio
end

get '/portfolio/pl' do
  @body_class = :slides
  @suffix = '/pl'
  haml :portfolio, :layout => :slides
end
