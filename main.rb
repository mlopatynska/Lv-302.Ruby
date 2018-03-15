require_relative 'abramov'
require 'yaml'
require_relative 'helpers'

# interface for abramov
class InterfaceAbramov
  include Abramov
  include Helper

  def initialize
    @problems = YAML.safe_load(File.open(File
    .join(File.dirname(__FILE__), 'problems.yaml')))
    greeting
    show_task_description
    take_parameters
  end

  def greeting
    puts 'Please, enter your name'
    user_name = gets.chomp
    puts "Hello #{user_name.capitalize}, It's interface for Abramov's tasks\n"
    print 'We have those tasks: '
    @problems.each_key { |key| print key, ', ' }
  end

  def take_task_number
    puts "\nPlease enter task number"
    @input_task_number = gets.chomp
    if @problems.keys.include?(@input_task_number)
      @input_task_number
    else
      puts 'You have entered wrong number'
      take_task_number
    end
  end

  def show_task_description
    puts @problems[take_task_number]
  end

  def take_parameters
    name = 'task_' + @input_task_number
    enter_prompt(name)
    user_values = gets.chomp.split.map(&:to_i)
    if input_check(name, user_values) && natural_check(user_values)
      print 'Result is: '
      print send(name, *user_values), "\n"
    else
      take_parameters
    end
  end
end

InterfaceAbramov.new
