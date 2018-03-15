require_relative 'abramov'
require 'yaml'
require_relative 'helpers'
# interface for abramov
class InterfaceAbramov
  include Abramov
  include Helper

  attr_accessor :task_number
  def initialize
    @problems = YAML.load(File.open(File.join(File.dirname(__FILE__), 'problems.yaml')))
    greeting
    show_task_description
    get_parameters
  end

  def greeting
    puts 'Please, enter your name'
    user_name = gets.chomp
    puts "Hello #{user_name.capitalize}, It's interface for Abramov's tasks", ''
    print "We have those tasks: "
    @problems.each_key {|key| print key, ", "}
  end

  def get_task_number
    puts "\nPlease enter task number"
    @input_task_number = gets.chomp
    if @problems.keys.include?(@input_task_number) 
      @input_task_number
    else
      puts "You have entered wrong number"
      get_task_number
    end
  end

  def show_task_description
    puts  @problems[get_task_number]
  end

  def get_parameters
    name = 'task_' + @input_task_number
    enter_prompt(name)
    user_values = gets.chomp.split
    # quantity_pass = false
    # natural_pass = false
    quantity_pass = input_check(name, user_values)
    natural_pass = natural_check(user_values)
    if user_values.length == 1
      print "Result is: ", quantity_pass == false || natural_pass == false ? get_parameters : self.send(name, user_values.first.to_i), "\n"
    elsif user_values.length == 2
      print "Result is: ", quantity_pass == false || natural_pass == false ? get_parameters : self.send(name, user_values.first.to_i, user_values.last.to_i), "\n"
    else
      print "Result is: ", quantity_pass == false || natural_pass == false ? get_parameters : self.send(name), "\n"
    end
  end
end


#InterfaceAbramov.new.get_task_number
#InterfaceAbramov.new.greeting
 # problems = YAML.load(File.open(File.join(File.dirname(__FILE__), 'problems.yaml')))
 # puts problems.keys.count
 InterfaceAbramov.new
