class CarOwner
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

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
    Car.all.select{ |car| car.car_owner == self }
  end

  def mechanics
    cars.map(&:mechanic)
  end

  #Class methods to aggregate data
  def self.total_number_of_cars
    all.map(&:cars).flatten.length
  end

  def self.average_number_of_cars
    (total_number_of_cars.to_f / all.length).round(1)
  end
end
