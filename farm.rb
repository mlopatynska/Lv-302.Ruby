	class Creature
		@@count = 0
		
		def self.count
			@@count
		end
		attr_reader :name, :type
		def initialize(name)
			@name = name
			@type = self.class
			@@count+=1
		end

		def who_am_I
			"I'm: #{@name}, #{@type}"
		end

		def born
			"#{who_am_I}, is born"
		end
		
		def eat
			"#{who_am_I}, eating"
		end

		def +(any)
			self.type.to_s + any.type.to_s
		end
	end

	class Animal < Creature
		def suck_milk
			puts "I'm, #{self.name} #{self.type} sucking milk"
		end

		def voice; end 
	end

	class Fish < Creature
		def swim
			puts "I'm, #{self.name} #{self.type} swiming"
		end
	end

	class People < Creature
		def watch
			puts "I'm, #{self.name} #{self.type} wathcing"
		end

		def hunt; end
	end

	class Bird < Creature
		def sing
			puts "I'm, #{self.name} #{self.type}, I'm singing"
		end
		def fly
			puts "I'm, #{self.name} #{self.type}, I'm flying"
		end
	end

	class Eagle < Bird
		def sing
			puts "I'm, #{self.name} #{self.type}, I can't sing"
		end

		def hunt
			puts "I'm, #{self.name} #{self.type}, I'm hunting"
		end
	end

	class Parrot < Bird
	end

	class Sharp < Fish
	end

	class Salmon < Fish
	end

	class Dog < Animal
		def voice
			puts "I'm, #{self.name} #{self.type}, my voice 'gav gav'"
		end
	end

	class Cat < Animal
		def voice
			puts "I'm, #{self.name} #{self.type}, my voice 'meaw meaw'"
		end
	end

	class BlackMan < People
		def hunt(something)
			puts "I'm, #{self.name} #{self.type}, I've hunted #{something.class}"
		end
	end

	class WhiteMan < People
		def hunt(something)
			puts "I'm, #{self.name} #{self.type}, I've not hunted #{something.class}, I can just trolling BlackMan"
		end
	end

	Creatures = [Parrot.new("PePe"), Eagle.new("Best eagle"),WhiteMan.new("brad pitt"), BlackMan.new("50cent")]
	Creatures.each do |elem| puts 	elem.who_am_I,
							  		elem.eat,
							  		elem.born
							  		elem.hunt
				   end  

	puts Cat.new("barsik") + Cat.new('barbos')

	puts Creature.count
	

