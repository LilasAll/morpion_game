require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'boardcase.rb'
#require_relative 'show.rb'
#require_relative 'application.rb'

require 'pry'

class Game
	attr_accessor :current_player, :players_list, :board, :status
	

	def initialize 
		
		#Initialize player 1
		puts "Joueur 1, ton symbol sera la croix "
		puts "Quel est ton nom ?"
		print "Ton nom > "
		player1_name = gets.chomp
		player1 = Player.new(player1_name, "x")
		
		#Initialize player 2
		puts "Joueur 2, ton symbol sera le rond"
		puts "Quel est ton nom ?"
		print "Ton nom > "
		player2_name = gets.chomp
		player2 = Player.new(player2_name, "o")
		#puts "#{player1} #{player2}"

		#Make an array with the players
		@players_list = Array.new
		@players_list << player1
		@players_list << player2
		#puts "#{@players_list}"

		#Put the status of the game in On Going
		@status = "En cours"

	end

	def turn 
		
	end

end

binding.pry