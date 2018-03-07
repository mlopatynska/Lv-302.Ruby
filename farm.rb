
class Creature
  @@count_of_creatures = 0
  
  def initialize name = "Unknown", age = 0
    @@count_of_creatures += 1
    @name = name
    @age = age
  end
  
  def show_count
    puts "The number of creatures is: #{@@count_of_creatures}"
  end
  
  def get_age 
    puts "The creature is #{@age} years old"
  end  
  
  def get_name 
    puts  "The creature name is #{@name}"
  end
  
  def set_age age
    if age.class == Fixnum && age > 0
      @age = age 
    else
      raise "Invalid data"
    end
    end
end
class Human < Creature
  @@count_of_human = 0
  attr_accessor :name, :age
    def initialize name, age
      super
      @@count_of_human += 1
    end
   def +(other)
    Human.new("Sum of ages #{@name} and #{other.name}", @age + other.age)
   end
    def get_age 
      puts "The human is #{@age} years old"
    end
    def get_name 
      puts  "The human name is #{@name}"
    end
    def show_count
      super
      puts "The number of human is: #{@@count_of_human}"
    end
    def dead 
      @@count_of_human -= 1
      @@count_of_creatures -= 1
    end 
end
creature = Creature.new
human1 = Human.new "Oleg", 11
human1::name = "Ivan"
human1.set_age -12
human1.get_name
human1.get_age
human1.show_count
human1.dead
human1.show_count
human2 = Human.new "Igor", 11
human2.set_age 12
p human2 + human1
#puts "#{sum_of_ages}"

