class Creature
  @@count = 0

  attr_accessor :name, :age, :legs_count, :type

  def initialize 
    @@count += 1

    @type = self.class.name

    puts " --- You've got a new #{@type} !"
  end

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def finalize()
    @@count -= 1
  end

  def legs_count=(value)
    @legs_count = value
  end

  def get_info
    puts "#{@name} is #{@age} years old and has #{legs_count} legs."
  end

  def talk
    puts "#{@name} says that he's an #{@type} !"
  end

  def show_count
    puts "There are #{@@count} creatures"
  end

  def +(someome)
    self.type.to_s + someome.type.to_s
  end
end

# ========================================================

class Animal < Creature
  
  # def initialize
  #   super
  #   puts "Animal is created"
  # end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
end

class Birds < Creature

  # def initialize
  #   super
  #   puts "Birds is created"
  # end

  def move(destination)
    puts "#{@name} flies to the #{destination}."
  end
end

class People < Creature

  # def initialize
  #   super
  #   puts "People is created"
  # end

  def talk
    puts "#{@name} speaks ukrainian !"
  end

  def move(destination)
    puts "#{@name} goes #{destination} km on farm every day."
  end
end

# ==========================================================

class Dog < Animal
  def talk
    puts "#{@name} says Bark !"
  end
end


class Cat < Animal
  def talk
    puts "#{@name} says Meow !"
  end
end

class Owl < Birds
  def talk
    puts "#{@name} says Chirp-Chirp !"
  end
end

class Duck < Birds
  def talk
    puts "#{@name} says Quack !"
  end
end

class Man < People; end

class Woman < People; end

fido = Dog.new
fido.name = "Fido"
fido.age = 3
fido.legs_count = 4
fido.get_info
fido.talk

milka = Cat.new
milka.name = "Milka"
milka.age = 5
milka.legs_count = 4
milka.get_info
milka.talk

p fido + milka

# birdy = Owl.new
# birdy.name = "Birdy"
# birdy.age = 10
# birdy.legs_count = 2
# birdy.get_info
# birdy.talk

# ducky = Duck.new
# ducky.name = "Ducky"
# ducky.age = 1
# ducky.legs_count = 2
# ducky.get_info
# ducky.talk

# ivan = Man.new
# ivan.name = "Ivan"
# ivan.age = 21
# ivan.legs_count = 2
# ivan.get_info
# ivan.talk

# ira = Woman.new
# ira.name = "Ira"
# ira.age = 21
# ira.legs_count = 2
# ira.get_info
# ira.talk

# ira.show_count