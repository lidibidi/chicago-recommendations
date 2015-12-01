require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :database => 'chicago_recs'
  :adapter=> 'postgresql'
)

get '/' do
   return 'Test'
end

get '/api' do
  Recommendation.all.to_json
end
