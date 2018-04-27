require 'sinatra'
require './config'
require './lib/blackjack.rb'

get '/' do
	erb(:index)
end

post '/iniciar' do
	session['blackjack'] = BlackJack.new
	session['texto'] = session['blackjack'].valida(params["Jugador"])
	erb(:juego)
end
