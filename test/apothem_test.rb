require 'minitest/autorun'
require 'bigdecimal'
require_relative '../lib/reg-pol-area/PolyMath.rb'

class Test_area_with_apothem < Minitest::Test
	def test_perimeter_with_apothem
		assert_equal BigDecimal.new('14.53'), PolyMath.calcPerimeterWithApothem(2, 5).round(2)
	end

	def test_area_with_apothem
		assert_equal BigDecimal.new('974.23'), PolyMath.findAreaWithApothem(17, 7).round(2)
	end
end