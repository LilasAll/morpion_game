#require_relative 'board.rb'
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
		puts " "
		puts " "
		print "Ton nom > "
		player1_name = gets.chomp
		player1 = Player.new(player1_name, "x")
		
		#Initialize player 2
		puts " "
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

		puts " "
		puts " "
		puts "Bienvenus à vous #{player1_name} et #{player2_name} !!!"
		puts " "
		puts "Vous allez vous affronter autour d'un jeu sans pitié : "
		puts "                  ~ THE MORPION ~                      "
		puts " "
		puts " "
		puts "Voici le tableau de jeu. A chaque case correspond à un numéro."
		puts " "
		puts "   ----------------------------------------"
		puts "   |            |            |            |"
		puts "   |     1      |     2      |     3      |"
		puts "   |            |            |            |"
		puts "   |            |            |            |"
		puts "   ----------------------------------------"
		puts "   |            |            |            |"
		puts "   |     4      |     5      |     6      |"
		puts "   |            |            |            |"
		puts "   |            |            |            |"
		puts "   ----------------------------------------"
		puts "   |            |            |            |"
		puts "   |     7      |     8      |     9      |"
		puts "   |            |            |            |"
		puts "   |            |            |            |"
		puts "   ----------------------------------------"
		puts " "
		puts " "
		puts " ------ Puisse le sort vous être favorable ------"


		#Put the status of the game in On Going
		@status = "En cours"

	end

	def turn

		#while victory == false
		#	Board.play_turn 
	  #end

	end

end

binding.pry