#require 'bundler'
#Bundler.require

require_relative 'lib/player.rb'
require_relative 'lib/application.rb'
require_relative 'lib/board.rb'
require_relative 'lib/boardcase.rb'
require_relative 'lib/game.rb'
require_relative 'lib/show.rb'

require 'pry'

puts "Coucou à tous!!! Et bienvenue dans ce jeu."
puts "Fun, rigolade, gaudriolle... que d'amusement vous attendent."

puts "Tout d'abord, quel est ton nom j1?"
print "> "
player1 = gets.chomp
symbol1 = "x"
player1 = Player.new(player1, symbol1)

puts "Tout d'abord, quel est ton nom j22?"
print "> "
player2 = gets.chomp
symbol2 = "o"
player2 = Player.new(player2, symbol2)


#puts "#{player1.value}"
#puts "#{player2.value}"