require 'rspec'
require './dice_class'

describe 'Dice' do 

# Has assignable sides

	it "has a number of sides assigned to it" do
		expect(Dice.new(6).sides).to eq(6)
	end

	it "has a different number of sides assigned to it" do
		expect(Dice.new(10).sides).to eq(10)
	end

# Can accept different values dependent on sides

	it "has a range of values assigned to it" do
		expect(Dice.new(6).values).to eq([1, 2, 3, 4, 5, 6])
	end

	it "has a different range of values assigned to it" do
		expect(Dice.new(10).values).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
	end

# Has rolling functionality

	it "rolls a single number" do
		expect(1..6).to cover(Dice.new(6).roll)
	end
	
end