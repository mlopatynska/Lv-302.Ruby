class Farm 

	@@count = 0

	def initialize
		@@count += 1
		puts "Being class created"
	end

	def show_count
    "There are #{@@count} beings"
  end

	attr_accessor :name, :age, :game_staff 
    
  def identify
    "Hello, my name is #{@name} and i'm #{@age} years old!"
  end

  def eat
  	"Every single being would like to eat a lot of meet, especially"
  end

  def personality
  	"#{@name} like to play #{@game_staff}"
  end

  def dest 
  	@@count -= 1	
  end

  def +(comb_names)
  	self.name.to_s + comb_names.name.to_s	
  end
end




class People < Farm
	def eat
		beings_meat = super
		"#{beings_meat} humans like porg"
	end
end

class Man < People
	def personality
	  people_game = super
    "Humans have a passion to play games. #{people_game}"
  end
end

class Woman < People
	def personality
		people_game = super
    "#{@name} like to play with #{people_game}"
  end
end



class Animal < Farm
	def eat
		beings_meat = super
		"Every single being would like to eat a lot of meet, especially #{beings_meat}"
	end
end

class Camel < Animal
	def personality
		animal_game = super
    "#{@name} like to play with #{animal_game}"
  end
end

class Wolf < Animal
	def personality
		animal_game = super
    "#{@name} like to play with #{animal_game}"
  end
end



class Bird < Farm
	def eat
		beings_meat = super
		"Every single being would like to eat a lot of meet, especially #{beings_meat}"
	end
end

class Owl < Bird
	def personality
		bird_game_game = super
    "#{@name} like to play with #{bird_game}"
  end
end

class Eagle < Bird
	def personality
		bird_game_game = super
    "#{@name} like to play with #{bird_game}"
  end
end



p1 = People.new
p2 = Man.new
p3 = Woman.new
p p1.eat 
p1.dest
p p1.show_count
p2.name = "Jack"
p2.age = 23
p2.game_staff = "football"
p3.name = "lara"
p3.age = 22
p p2 + p3
p p2.personality
p p3.identify


