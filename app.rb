# app.rb

require 'sinatra'
require 'better_errors'

configure :development do   ## middleware
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get "/" do
  raise "oops"
end

# our application's routes
get '/hi' do
  "Hi, I am Frank! This is noting"
end


# # return quotes matching a tag
# get '/quote/:tag' do
#   # raise an error unless the tag is 'life'
#   # because sinatra had some good life lessons for us all
#   raise "tag must not be anything but 'life'" if params[:tag] != 'life'
#   "You've requested a quote for tag: '#{params[:tag]}'"
# end


# default /quote route


# get '/quote/:tag' do
#   # raise an error unless the tag is 'life'
#   # because sinatra had some good life lessons for us all
#   raise "tag must be 'alcohol', 'love', or 'life'" if params[:tag] == 'alcohol'
#   "You've requested a quote for tag: '#{params[:tag]}'"

#   if params[:tag] == 'love'

#   if params[:tag] == 'life'
# end

get '/quote/:tag' do
	quotes = {
		:life => [
			“You only live once, the way I live, once is enough.”,
			“The best is yet to come.”,
			“The big lesson inlife, baby, is never be scared of anyone oranything.”  

		]

		:love => [
			“You may be a puzzle, but I like the way the parts fit.”, 
			“Basically, Imfor anything that gets you through the night” 
		]

		:alcohol => [

		“Alcohol may be mans worst enemy, but the bible says love your enemy.”, 

		“I feel sorryfor people that dont drink, because whenthey wake up inthe morning
	]
	
	}


	# quotes[params[:tag].to_sym]
	# return quotes matching a tag
get '/quote/:tag' do
  quotes = {
    :life => [
      "The best is yet to come.",
      "The best revenge is massive success."
    ],
    :love => [
      "....A simple I love you means more than money....",
      "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
    ]
  }

  [
    "<h2>Quotes matching tag: '#{params[:tag]}'</h2>", #Array with two string elements. One interpolating value of param
    "<ul>"
  ].concat(    
    quotes[params[:tag].to_sym].map do |quote|   #Taking quotes hash, sorting parameters in tag, mapping for each quote to perform function, spits out quote in h3 format
      "<li><h3>#{quote}</h3></li>"
    end
  ).push("</ul>")  #push string onto end 
end

#####


get '/quote/:tag' do
	@frank.quote(params[:tag])
end 




