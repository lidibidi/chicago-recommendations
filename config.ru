require 'sinatra/base'

#  Application controller should always be loaded first
require './controllers/application'
# then require all the things
require './controllers/recommendations'
require './models/recommendation'

map('/') { run RecommendationsController }
