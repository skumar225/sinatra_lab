
require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'
require './greeter.rb'

#Before filter, create new instance
before do 
  @greeter = Greeter.new
end

get '/hi' do
  @greeter.greet
end

get '/quote/:tag' do
  @greeter.quote params[:tag]
end

get '/quote/:tag' do
  @greeter.quote.rand params[:tag]
end