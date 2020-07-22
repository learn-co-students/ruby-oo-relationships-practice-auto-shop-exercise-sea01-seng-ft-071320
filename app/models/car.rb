class Car
  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification)
    @make, @model, @classification = make, model, classification
    
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Class methods to aggregate data
  def self.classifications
    all.map(&:classification)
  end

  def self.find_mechanic(specialty)
    Mechanic.all.select { |mechanic| mechanic.specialty == specialty }
  end
end
