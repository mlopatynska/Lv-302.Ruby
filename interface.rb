require_relative 'abramov'
require 'yaml'
class InterfaceAbramov
  include Abramov

  attr_accessor :task_number, :problems
  @@problems = YAML.load(File.open(File.join(File.dirname(__FILE__), 'problems.yaml')))
  # initialize(task_number)
  #   @task_number = task_number
  # end

  def greeting
    puts 'Please, enter your name'
    user_name = gets.chomp
    puts "Hello #{user_name.capitalize}, It's interface for Abramov's tasks", ''
    print "We have those tasks: "
    @@problems.each_key {|key| print key, ", "}
  end

  def get_task_number
    puts "\nPlease enter task number"
    input_task_number = gets.chomp
    if @@problems.keys.include?(input_task_number) 
      input_task_number
    else
      puts "You have entered wrong number"
      get_task_number
    end
  end

  def show_task_description
    puts  @@problems[get_task_number]
  end

  def check
  end
end

#InterfaceAbramov.new.get_task_number
#InterfaceAbramov.new.greeting
 # problems = YAML.load(File.open(File.join(File.dirname(__FILE__), 'problems.yaml')))
 # puts problems.keys.count
 InterfaceAbramov.new.show_task_description
