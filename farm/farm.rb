class Creature

	attr_reader :name, :age

	def initialize (name, age)
		@name = name
		@age = age
		puts "New #{self.class.name} is created. Name: #{@name}, age: #{@age}."
	end

	def +(other)
		Creature.new("#{self.class.name}-#{other.class.name}", 0)
	end

end

module Walk
	def walk
		puts "#{@name} can walk!"
	end
end

module Jump
	def jump
		puts "#{@name} can jump!"
	end
end

module Swim
	def swim
		puts "#{@name} can swim!"
	end
end

module Fly
	def fly
		puts "#{@name} can fly!"
	end
end

class Human < Creature

	include Walk, Jump, Swim

	def greeting
		puts "Hello! My name is #{@name}. Nice to meet you!"
	end

end

class Male < Human

	def work
		puts "I'm a strong man! I can do everything!"
	end

end

class Female < Human

	def work
		puts "I'm a smart woman! I can do everything!"
	end

end

class Animal < Creature

	include Walk

	@@count = 0

	def initialize (name="unknown", age=0)
		super
		@@count += 1
	end

	def self.show_count
		puts "There are #{@@count} animals in your farm."
	end

end

class Bird < Animal; end

class Chicken < Bird

	def talk
		puts "Ko ko ko"
	end

end

class Duck < Bird

	include Swim, Fly

	def talk
		puts "Krya krya"
	end

end

class Goose < Bird

	include Swim, Fly

	def talk
		puts "Ga ga ga"
	end

end

class Mammal < Animal

	def self.what_i_am
		puts "I'm Mammal class. I'm a descendant of animals."
	end

end

class Dog < Mammal

	include Swim

	def talk
		puts "Woof woof"
	end

end

class Cat < Mammal

	def talk
		puts "Meow"
	end

end

class Horse < Mammal

	def talk
		puts "I-go-go"
	end

end

class Cow < Mammal

	def talk
		puts "Myyy"
	end

end

class Pig < Mammal

	def talk
		puts "Xro xro"
	end

end

class Rabbit < Mammal

	include Jump

	def talk
		puts "I can't talk :("
	end

end

nastia = Female.new("Nastia", 20)
nastia.greeting
nastia.work
nastia.walk
puts Female.ancestors
puts Cat.superclass
tuzik = Dog.new("Tuzik", 5)
puts tuzik.age
puts tuzik.walk
murzik = Cat.new("Murzik", 3)
chicken1 = Chicken.new("Pipi")
child = murzik + chicken1
duck1 = Duck.new
goose = Goose.new("Galka")
goose.talk
goose.swim
manka = Cow.new("Manka", 6)
igor = Horse.new("Igor", 4)
igor.talk
Animal.show_count
Mammal.what_i_am