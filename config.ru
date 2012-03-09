require './index.rb'

class Cv < Sinatra::Application
  configure :development do
    require 'rack-livereload'

    use Rack::LiveReload
  end
end

run Cv
