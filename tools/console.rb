require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


man1 = CarOwner.new("Ran")
man2 = CarOwner.new("Jeff")
man3 = CarOwner.new("Naty")

mechanic1 = Mechanic.new("Bob", "Compact")
mechanic2 = Mechanic.new("Jo", "SUV")
mechanic3 = Mechanic.new("Mike", "Premium")
mechanic4 = Mechanic.new("Avi", "Electric")


car1 = Car.new("Toyota", "Yaris", "Compact", man3, mechanic1)
car2 = Car.new("Toyota", "Rav4", "SUV", man2, mechanic2)
car3 = Car.new("Subaru", "Forester", "Premium", man2, mechanic3)
car4 = Car.new("Tesla", "ModelX", "Electric", man1, mechanic4)
car5 = Car.new("Mt", "Nb", "SUV", man3, mechanic2)

binding.pry

