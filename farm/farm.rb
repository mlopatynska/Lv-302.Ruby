
class Creature
  @@count = 0
  attr_accessor :name, :age
  def initialize(name = "unknown", age = 0)
	@@count += 1
	@name = name
	@age = age
  end

  def +(other)
	puts "#{self.class.name}o#{other.class.name}o"
  end

  def make_noise; end

  def eat
	puts "#{@name} is eating"
  end

  def sleep
	puts "#{@name} is sleeping"
  end

  def self.show_count
	puts "There are #{@@count} creatures"
  end

  def to_s
	"This is #{self.class.name} whos name is #{@name} and age is #{@age}"
  end
end

class Mammal < Creature
  def give_birth
	puts "Mammal gives birth to a child"
  end
end

class Human < Mammal
  attr_accessor :race
  def initialize(name, age, race)
	super(name,age)
	@race = race
  end

  def make_noise
	puts "Human speach noise"
  end

  def to_s
	super + ", and race is #{@race}"
  end
end

class Dog < Mammal
  attr_accessor :breed
  def initialize(name, age, breed)
	super(name,age)
	@breed = breed
  end

  def make_noise
	puts "Gav"
  end

  def chase_car
	puts "Doggie chases a car"
  end

  def to_s
	super + ", and breed is #{@breed}"
  end
end

class Bird < Creature
  def lay_eggs
	puts "Bird lays eggs"
  end

  def fly
	puts "Bird is flying"
  end
end

class Chicken < Bird
  def run_from_human
	puts "Chicken is running away"
  end

  def make_noise
	puts "Ko ko ko"
  end
end
