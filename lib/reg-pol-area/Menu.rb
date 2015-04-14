require_relative 'PolyMath'

module Menu
	def self.show
		puts "Welcome to an area-of-regular-polygon calculator. What values do you know?\n"

		puts "1. Radius and number of sides."
		puts "2. Exit"

		puts "\nI realize that exit is not a value that belongs to a regular polygon. \n"
	end

	def self.evalChoice(choice)
		case choice
		when '1'
			print "\nPlease input the radius> "
			radius = gets.chomp.to_i

			print "\nPlease input the number of sides> "
			sides = gets.chomp.to_i

			answer = PolyMath.findAreaWithRadius(radius, sides).to_f
			answer = answer.round(2)

			puts "\nThis regular polygon is approximately #{answer} units^2"
			true
		when '2'
			puts "\nExiting..."
			false
		else
			puts "It appears that you have not chosen a valid, well, choice. You're going to have to try again."
			true
		end
	end
end