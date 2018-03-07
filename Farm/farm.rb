
class Creature (name = "Creature_of_God")

	def initialize
		p "I'm alive!!!"
		@@creature_number += 1
	end

	def creature_name
		@name = name
	end

	attr_accessor :name

	def breath
		@breath = true
	end

	def body
		@body = body
	end

	def speak
		p "#{self.name} speaks #{language} lenguage"
	end

	@@creature_number = 0

	def creature_check
		puts "#{@@creature_number}"
	end
end

class Mammal < Creature
	def environment
		@environment = "Dry land"
	end
end

class Animal < Mammal
	def drink_milk
		drink_milk = true
	end
end

class People < Mammal
	def legs
		@legs = 2
	end
end

class Fish < Creature
	#def initialize
	#	@@fish_number += 1
	#end
	def environment
		@environment = "Air"
	end

	def language
		@language = "None"
	end

	@@fish_number = 0

	def fish_check
		puts "{@@fish_number}"
	end
end

class Bird < Creature
	def environment
		@environment = "Air"
	end

	def language
		@language = "Chik"
	end

end

class Duck < Bird

end

class Chicken < Bird

end

class Cow < Animal
	def language
		@language = "Mooow"
	end
end

class Dog < Mammal
	def language
		@language = "Woff"
	end
end

class Cat < Mammal
	#	def initialize
	#		@@cat_number += 1
	#end
	def language
		@language = "Meow"
	end

	@@cat_number = 0

	def cat_check
		puts "#{@@cat_number}"
	end
end

class Okun < Fish

end

class Karas < Fish

end

asd = Cat.new 
ss = Cat.new 
dd = Cat.new 
ff = Cat.new 
gg = Cat.new 
hh = Cat.new 

asd.creature_check


bob = Cat.new 
bob.name = "Bob"
bob.speak

bob.creature_check



