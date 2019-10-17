require_relative 'player.rb'
require_relative 'boardcase.rb'
require_relative 'show.rb'
require_relative 'application.rb'

require 'pry'


class Board
	attr_accessor :all_boardcases
	attr_accessor :count_turn
	@all_boardcases = Array.new

	def initialize
		@all_boardcases = Array.new
		#Associate a place and a value for each case
		#then, put it in an Array named all_boardcase
		@all_boardcases << (@case_A1 = Boardcase.new(nil, "1"))
		@all_boardcases << (@case_A2 = Boardcase.new(nil, "2"))
		@all_boardcases << (@case_A3 = Boardcase.new(nil, "3"))
		@all_boardcases << (@case_B1 = Boardcase.new(nil, "4"))
		@all_boardcases << (@case_B2 = Boardcase.new(nil, "5"))
		@all_boardcases << (@case_B3 = Boardcase.new(nil, "6"))
		@all_boardcases << (@case_C1 = Boardcase.new(nil, "7"))
		@all_boardcases << (@case_C2 = Boardcase.new(nil, "8"))
		@all_boardcases << (@case_C3 = Boardcase.new(nil, "9"))

		puts "#{@case_A1.value}"
		puts "#{@all_boardcases}"

	end

	def play_turn
		puts "Que souhaite-tu faire ce tour-ci?"
		puts "Tu as le choix entre 9 cases, choisi bien!"
		#Ask for a number between 1 and 9 corresponding to the case
		puts "Merci de rentrer le numéro correspondant à la case (entre 1 et 9)"
		print "Ton choix > "
		choice = gets.chomp


		#Change the value of the case for the choosen value
		if choice == "1" 
				@case_A1.value = "x"
		elsif choice == "2"
			@case_A2.value = "x"
		elsif choice == "3"
			@case_A3.value = "x"
		elsif choice == "4"
			@case_B1.value = "x"
		elsif choice == "5"
			@case_B2.value = "x"
		elsif choice == "6"
			@case_B3.value = "x"
		elsif choice == "7"
			@case_C1.value = "x"
		elsif choice == "8"
			@case_C2.value = "x"
		elsif choice == "9"
			@case_C3.value = "x"

		end

		@result = choice 
		#Verification lines
		#puts "#{choice}"
		#puts "#{@case_A1.value}"
		#puts "#{@all_boardcases}"

	end

	def victory

		#Take each posibility of victory and see if it's true
		if @case_A1.value = @case_A2.value = @case_A3.value
			return true 
		elsif @case_B1.value = @case_B2.value = @case_B3.value
			return true 
		elsif @case_C1.value = @case_C2.value = @case_C3.value
			return true 
		elsif @case_A1.value = @case_B1.value = @case_C1.value
			return true 
		elsif @case_A2.value = @case_B2.value = @case_C2.value
			return true 
		elsif @case_A3.value = @case_B3.value = @case_C3.value
			return true 
		elsif @case_A1.value = @case_B2.value = @case_C3.value
			return true 
		elsif @case_A3.value = @case_B2.value = @case_C1.value
			return true 
		else 
			puts "Pas encore de gagnant"
		end 

	end

end

binding.pry