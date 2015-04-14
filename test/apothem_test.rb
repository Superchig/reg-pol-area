require 'minitest/autorun'
require 'bigdecimal'
require_relative '../lib/reg-pol-area/PolyMath.rb'

class Test_area_with_apothem < Minitest::Test
	def test_perimeter_with_apothem
		assert_equal BigDecimal.new('14.53'), PolyMath.calcPerimeterWithApothem(2, 5).round(2)
		puts BigDecimal.new('14.53') 
	end
end