require 'minitest/autorun'
require_relative '../src/1_4_shamelessly_green'
 
describe Bottles do
	before do
		@bottles = Bottles.new
	end

	describe 'when verse input is 99' do
		it 'must respond with correct verse' do
			expected = "99 bottles of beer on the wall, " +
				"99 bottles of beer.\n" +
				"Take one down and pass it around, " +
				"98 bottles of beer on the wall.\n"
			@bottles.verse(99).must_equal expected
		end
	end
end
