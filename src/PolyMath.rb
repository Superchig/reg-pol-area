require 'bigdecimal'
require 'bigdecimal/util'

module PolyMath
	def self.radianToDegree(radian, roundTo=5)
		radian = radian.to_d
		radian *= 180
		radian /= Math.pi
		radian.round(roundTo)
	end

	def self.findAreaWithRadius(radius, sides)
		def self.calcApothem(radius, sides)
			step1 = Math.cos(180 / sides)
			puts "step1 (radians) is: #{step1}"
			step1 = radianToDegree(step1, 9)
			puts "step1 is: #{step1}"
			step1 = step1.to_d
			puts "step1 is: #{step1}"
			apothem = step1 * radius
		end

		apothem = calcApothem(radius, sides)
		puts "apothem is: #{apothem}"

		def self.calcPerimeter(radius, sides)
			twoRadius = radius * 2
			sides180 = 180 / sides
			puts "sides180 is: #{sides180}"
			sinSides180Radian = Math.sin(sides180)
			sinSides180 = radianToDegree(sinSides180Radian)
			puts "sinSides180 is: #{sinSides180}"
			sideLength = twoRadius * sinSides180 
			puts "sideLength is: #{sideLength}"

			perimeter = sideLength * sides
		end

		perimeter = calcPerimeter(radius, sides)
		puts "perimeter is: #{perimeter}"

		perimeterIsBigDec = perimeter.is_a? BigDecimal
		puts perimeterIsBigDec ? "perimeter is a BigDecimal" : "perimeter is not a BigDecimal"

		area = (apothem * perimeter) / 2
		puts "area is: #{perimeter}"

		areaIsBigDec = area.is_a? BigDecimal
		puts areaIsBigDec ? "area is a BigDecimal" : "area is not a BigDecimal"

		return area
	end
end
