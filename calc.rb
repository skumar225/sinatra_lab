require 'sinatra'
require 'sinatra/reloader' #Make changes without stopping and starting server
require 'better_errors'

configure :development do   
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end


get '/add/:num1/:num2' do 
	# "This is number 1 #{num}"  #Same as "This is numer 1" + num1 in JS
	"The sum is #{params[:num1].to_i + params[:num2].to_i}"  #PARAMS ARE ALWAYS STRINGS
end

get '/add/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The sum is #{num1 + num2}"

end

get '/subtract/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The subtraction is #{num1 - num2}"

end

get '/multiply/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The product is #{num1 * num2}"

end

get '/division/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	begin "The quotient is #{num1 / num2}"  #The code that's going to be executed 
	rescue Exception #For any error  #If there's an error, execute block of code below, so app doesn't crash
		"Don't divide by zero please"
	end
end