require 'sinatra'
require 'haml'
require 'sass'
require 'sinatra/content_for'
require 'sinatra/namespace'

module Helpers
  def self.technologies_used
    %w(
      Angular
      Backbone
      Bootstrap
      CSS
      Capistrano
      Chef
      Coffeescript
      Docker
      ES5
      Elasticsearch
      Grape
      HTML
      Illustrator
      JQuery
      Javascript
      Marionette
      MongoDB
      MySQL
      PHP
      Photoshop
      PostgreSQL
      Rails
      ReactJS
      Redis
      Ruby
      Salesforce
      Sass
      Sidekiq
      Sinatra
      Spree
    ).sort.join(', ')
  end
end

before do
  @prefix = ''
  @url = request.path_info
end

get '/?' do
  @body_class = :cv
  @technologies_used = Helpers.technologies_used
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
