require './abramov.rb'
require 'yaml'

# Interface all rights reserved
class Interface
  include Abramov

  @@tasks = YAML.safe_load(File.open(File.join(File.dirname(__FILE__), 'tasks_hash.yaml')))['tasks_descriptions']

  def choose
    show_all
    get_task
    get_arguments
    show_result
    anything_else == 'y' ? choose : return
  end

  private

  def set_task
    puts 'Enter task_number:'
    @task_number = gets.chomp
  end

  def set_arguments
    puts 'Enter arguments:'
    @args = gets.chomp.split.map(&:to_i)
  end

  def get_task
    set_task
    if !@@tasks.key?(@task_number)
      puts 'No such task. Choose one from the list:'
      get_task
    else
      puts "Ваша задача: #{@@tasks[@task_number]}"
      @task_number
    end
  end

  def get_arguments
    set_arguments
    if check?(@args)
      @args
    else
      puts 'You entered not itegers or less then 0,try again'
      get_arguments
    end
  end

  def show_result
    puts "Result for #{@args} is:"
    puts send("task_#{@task_number}", *@args)
  end

  def check?(args)
    args.each { |x| return false if x <= 0 || method("task_#{@task_number}").arity != args.size }
  end

  def show_all
    puts 'Our tasks list:'
    @@tasks.each { |key, value| puts "#{key}  => #{value}" }
  end

  def anything_else
    puts 'If u want to continue enter /y/, if not anything else:'
    gets.chomp
  end
end

test = Interface.new
puts test.choose
