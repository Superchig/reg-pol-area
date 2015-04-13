require 'minitest/autorun'
require_relative '../src/PolyMath.rb'

class TestPolyMath < Minitest::Test
  def test_find_area_with_radius
		assert_equal BigDecimal.new('10.39'), PolyMath.findAreaWithRadius(2, 6).round(2)
  end
end
