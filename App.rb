require_relative 'src/Menu.rb'

use = true
while use
	Menu.show
	choice = gets.chomp
	use = Menu.evalChoice(choice)
end