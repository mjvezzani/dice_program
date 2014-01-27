class Dice

	attr_reader :sides

	def initialize(sides)
		@sides = sides
		@values = []
		@sides.times { |value| @values << value + 1 }
	end

	def values
		@values
	end

	def roll
		@values.sample
	end

end