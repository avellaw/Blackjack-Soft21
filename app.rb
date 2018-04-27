# Blackjack-soft21
require 'sinatra'
require './config'

get '/' do
	erb(:index)
end

post '/iniciar' do
	erb(:juego)
end
