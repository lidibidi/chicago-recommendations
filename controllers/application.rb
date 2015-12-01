# defining the starting point for our application,
# this use to be app.rb, however app.rb became muddy with too much stuff going on
# now we are going to give controllers a chance to organize our code
class ApplicationController < Sinatra::Base

    require 'bundler'
    Bundler.require
    ActiveRecord::Base.establish_connection(
      :database => 'chicago_recommendations',
      :adapter => 'postgresql'
    )

####### I need to specify my views folder

set  :views, File.expand_path('../../views', __FILE__)


  not_found do
    erb :fourohfour
  end

end
