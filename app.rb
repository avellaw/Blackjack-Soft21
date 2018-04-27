# Blackjack-soft21
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

post '/cartas' do
session['texto'] = session['blackjack'].asigna
	erb(:juego)
end
