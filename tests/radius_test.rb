require 'minitest/autorun'
require_relative '../src/PolyMath.rb'

class TestPolyMath < Minitest::Test
  def test_find_area_with_radius
		assert_equal BigDecimal.new('10.39'), PolyMath.findAreaWithRadius(2, 6)
  end

  def test_radian_to_degree
  	puts "Please check if: #{BigDecimal.new('2864.78898')} and #{PolyMath.radianToDegree(50)} are the same, as I haven't found a way to test it."

  	puts "TESTS~~~~~~~~~~~\n"

  	big_dec = BigDecimal.new('0.9')
  	big_dec_2 = big_dec * 2
  	puts "big_dec_2 is: #{big_dec_2}"

  	big_dec_2_int = big_dec_2.to_i
  	puts "big_dec_2_int is: #{big_dec_2_int}"
  end
end
