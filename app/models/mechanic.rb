class Mechanic
  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name, @specialty = name, specialty
    
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods to fetch data
  def cars
    Car.all.select { |car| car.mechanic == self }
  end

  def car_owners
    cars.map(&:car_owner)
  end

  def car_owners_names
    car_owners.map(&:name)
  end
end
