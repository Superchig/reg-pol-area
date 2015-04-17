# encoding: utf-8

require_relative 'PolyMath'

module Menu
	def self.show
		puts "Welcome to an area-of-regular-polygon calculator. What values do you know?\n"

		puts "1. Radius and number of sides."
		puts "2. Apothem and number of sides."
		puts "3. Exit"

		puts "I realize that exit is not a value that belongs to a regular polygon.\n"

		puts ""

		print "Input choice> "
	end

	def self.evalChoice(choice)
		unicode_squared = "\U+00B2"
		unicode_squared = unicode_squared.encode('utf-8')
		case choice
		when '1'
			print "Please input the radius> "
			radius = gets.chomp.to_i

			puts ""

			print "Please input the number of sides> "
			sides = gets.chomp.to_i

			puts ""

			answer = PolyMath.findAreaWithRadius(radius, sides).to_f
			answer = answer.round(2)

			puts "\nThis regular polygon is approximately #{answer} units^2"
			true
		when '2'
			print "Please input the apothem> "
			apothem = gets.chomp.to_i

			puts ""

			print "Please input the number of sides> "
			sides= gets.chomp.to_i

			puts ""

			answer = PolyMath.findAreaWithApothem(apothem, sides).to_f
			answer = answer.round(2)

			puts "\nThis regular polygon is approximately #{answer} units^2"
			true
		when '3'
			puts "\nExiting..."
			false
		else
			puts "It appears that you have not chosen a valid, well, choice. You're going to have to try again."
			true
		end
	end
end
