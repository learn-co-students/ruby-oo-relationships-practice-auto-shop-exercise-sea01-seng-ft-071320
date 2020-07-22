require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lucas = CarOwner.new('Lucas')
jaguar = Car.new('jaguar', 'X78', 'exotic')

binding.pry
0