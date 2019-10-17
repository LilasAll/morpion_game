class Boardcase
	attr_accessor :value, :identification

	def initialize(case_value, case_identification)
		#Associate to a case a value (x, o, nil) and
		#an identification (where is it?)
		@value = case_value
		@identification = case_identification
	end 

end