require 'sinatra'

get '/' do
	'Hello'	
end

get '/home' do
	'The home page'
end

get '/real_page' do
	'The other page'
end

get '/hi' do #redirects to 'real_page'
	redirect 'real_page'
end

