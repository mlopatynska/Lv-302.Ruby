class Farm
	@@count_being = 0

	def initialize
		@@count_being += 1
	end

	def farm_count
		if @@count_being == 1
			"There is #{@@count_being} being"
		else
			"There are #{@@count_being} beings"
		end
	end

	attr_accessor :name, :age, :interest

	def identify
		"It is #{@name} and it is #{@age} years old"
	end

	def eat
		"All beings like eat 'a lot'"
	end

	def interests
		"#{@name} like #{@interest}"
	end

	# Destructor
	def dead
		@@count_being -= 1
	end

	# Combination different animals (using names)
	def +(combination_operation)
		self.name.to_s + combination_operation.name.to_s
	end
end


class Animal < Farm
	def eat
		animal_dish = super
		"#{animal_dish}. Actualy predator like to eat another animals"
	end
end
class Tiger < Animal
	def interests
		tiger_interest = super
		"#{tiger_interest}. Tiger like live alone"
	end
end
class Lion < Animal
	def interests
		lion_interest = super
		"#{lion_interest}. Lions live in pride"		
	end
end


class Bird < Farm
	def eat
		birds_dish = super
		"#{birds_dish}. Birds like eat some sweets or little animals"
	end
end
class Owl < Bird
	def interests
		owl_interest = super
		"#{owl_interest}. Also owl can return their neck to 360 degree"
	end
end	
class Colobri < Bird
	def interests
		colibri_interest = super
		"#{colibri_interest}. And they the smallest birds in the World"
	end
end


class People < Farm
	def eat
		people_dish = super
		"#{people_dish}. People like eat all of this"
	end
end
class Man < People
	def interests
		"Men can have so many interests"
	end
end
class Woman < People
	def interests
		"Women... I don't know what I should tell"
	end
end

# minerva = Owl.new
# oligostrix = Owl.new
# minerva.dead
# minerva.name = "Minerva"

# oligostrix.name = "Oligostrix"
# oligostrix.age = 12
# oligostrix.interest = "flying in night"
# p oligostrix.farm_count
# p oligostrix.identify
# p oligostrix.eat
# p oligostrix.interests
# p oligostrix + minerva