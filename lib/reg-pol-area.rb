require_relative 'reg-pol-area/Menu.rb'

use = true
while use
	Menu.show
	choice = gets.chomp
	use = Menu.evalChoice(choice)
end