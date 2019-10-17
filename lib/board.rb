require_relative 'boardcase.rb'
require_relative 'player.rb'

require 'pry'


class Board
	attr_accessor :all_boardcases
	attr_accessor :count_turn
	@all_boardcases = Array.new

	def initialize
		@all_boardcases = Array.new
		#Associate a place and a value for each case
		#then, put it in an Array named all_boardcase
		@all_boardcases << (case_A1 = Boardcase.new(nil, 1))
		@all_boardcases << (case_A2 = Boardcase.new(nil, 2))
		@all_boardcases << (case_A3 = Boardcase.new(nil, 3))
		@all_boardcases << (case_B1 = Boardcase.new(nil, 4))
		@all_boardcases << (case_B2 = Boardcase.new(nil, 5))
		@all_boardcases << (case_B3 = Boardcase.new(nil, 6))
		@all_boardcases << (case_C1 = Boardcase.new(nil, 7))
		@all_boardcases << (case_C2 = Boardcase.new(nil, 8))
		@all_boardcases << (case_C3 = Boardcase.new(nil, 9))

		puts "#{case_A1.value}"
		puts "#{@all_boardcases}"

	end

	def play_turn
		puts "Que souhaite-tu faire ce tour-ci?"
		puts "Tu as le choix entre 9 cases, choisi bien!"
		#Ask for a number between 1 and 9 corresponding to the case
		puts "Merci de rentrer le numéro correspondant à la case (entre 1 et 9)"
		print "Ton choix > "
		choice = gets.chomp

		if choice < 1 or choice > 9
			puts "Merci de rentrer le numéro correspondant à la case !!ENTRE 1 ET 9!!"
		else
		end


		puts "#{choice}"
		puts "#{@all_boardcases}"


	end

	def victory

	end

end

binding.pry