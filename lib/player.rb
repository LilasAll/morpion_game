require 'pry'
#require_relative 'board.rb'

class Player

	attr_accessor :name, :symbol
	@name
	@symbol

	def initialize(player_name, chosen_symbol)
		#Associate a name and a value (symbol) to the player
		@name = player_name
		@symbol = chosen_symbol
	end

end

