class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def cars
    Car.all.select {|car| car.car_owner == self}
  end
  
  def mechanics
    self.cars.map {|car| car.mechanic}
  end
  
  def self.average_number_of_cars
    cars_count = Car.all.count.to_f
    owner_count = self.all.count.to_f
    cars_count / owner_count
  end
end

