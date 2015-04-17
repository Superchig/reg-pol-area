require 'minitest/autorun'
require_relative '../lib/reg-pol-area/PolyMath'

class TestPolyMath < Minitest::Test
  def test_find_area_with_radius
		assert_equal BigDecimal.new('10.39'), PolyMath.findAreaWithRadius(2, 6).round(2)
  end

  def test_perimeter_with_apothem
		assert_equal BigDecimal.new('14.53'), PolyMath.calcPerimeterWithApothem(2, 5).round(2)
	end

	def test_area_with_apothem
		assert_equal BigDecimal.new('974.23'), PolyMath.findAreaWithApothem(17, 7).round(2)
	end

	def test_area_with_side
		puts "tested!"
		assert_equal BigDecimal.new('2129.34'), PolyMath.findAreaWithSide(21, 8).round(2)
	end
end
