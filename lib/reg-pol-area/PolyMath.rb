require 'bigdecimal'
require 'bigdecimal/util'

class Numeric
	def degrees_to_radians
		self * Math::PI / 180
	end
end

module PolyMath

	def self.calcApothemWithRadius(radius, sides)
		ang1 = 180.to_d / sides
		puts "ang1 is: #{ang1}"
		apothem = radius * Math.cos(ang1.degrees_to_radians)
	end

	def self.calcPerimeterWithRadius(radius, sides)
		ang1 = 180.to_d / sides
		twoRadius = radius * 2
		sinAng1 = Math.sin(ang1.degrees_to_radians)
		sideLength = twoRadius * sinAng1
		perimeter = sides * sideLength
	end

	def self.calcPerimeterWithApothem(apothem, sides)
		ang1 = 180.to_d / sides
		tanAng1 = Math.tan(ang1.degrees_to_radians)
		sideLength = 2 * apothem * tanAng1
		perimeter = sideLength * sides
		perimeter = perimeter.to_d
	end

	def self.findAreaWithRadius(radius, sides)

		apothem = calcApothemWithRadius(radius, sides).to_d
		perimeter = calcPerimeterWithRadius(radius, sides).to_d
		area = (apothem * perimeter) / 2

		return area
	end
end
