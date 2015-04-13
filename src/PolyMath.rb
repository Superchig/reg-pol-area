require 'bigdecimal'
require 'bigdecimal/util'

class Numeric
	def degrees_to_radians
		self * Math::PI / 180
	end
end

module PolyMath

	def self.calcApothemWithRadius(radius, sides)
		ang1 = 180 / sides
		apothem = radius * Math.cos(ang1.degrees_to_radians)
	end

	def self.calcPerimeterWithRadius(radius, sides)
		ang1 = 180 / sides
		twoRadius = radius * 2
		sinAng1 = Math.sin(ang1.degrees_to_radians)
		sideLength = twoRadius * sinAng1
		perimeter = sides * sideLength
	end

	def self.findAreaWithRadius(radius, sides)

		apothem = calcApothemWithRadius(radius, sides).to_d
		puts "apothem is: #{apothem}"

		apothemIsBigDec = apothem.is_a? BigDecimal
		puts apothemIsBigDec ? "apothem is a BigDecimal" : "apothem is not a BigDecimal"

		perimeter = calcPerimeterWithRadius(radius, sides).to_d
		puts "perimeter is: #{perimeter}"

		perimeterIsBigDec = perimeter.is_a? BigDecimal
		puts perimeterIsBigDec ? "perimeter is a BigDecimal" : "perimeter is not a BigDecimal"

		area = (apothem * perimeter) / 2
		puts "area is: #{area}"

		areaIsBigDec = area.is_a? BigDecimal
		puts areaIsBigDec ? "area is a BigDecimal" : "area is not a BigDecimal"

		return area
	end
end
