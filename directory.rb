 # Instance variable (empty array) which can be used in all methods
@students = []

def print_menu
  puts "What would you like to do? Put a number."
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Exit"
end

def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

def print_student_list(names)
  names.each do |student| 
    puts "#{student[:name].capitalize}: #{student[:cohort].capitalize} cohort"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def show_students
  print_header
  print_student_list(@students)
  print_footer(@students)
end
  
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
    # While user input is not empty, loop through this code
  while !name.empty? do
    # Add student name to array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # Get another name from user. If empty, loop brekas 
    name = gets.chomp
  end
  # Return the array
  @students
end
# Selects a process based on user input
def process(selection)
    case selection
      when "1"
        input_students
      when "2"
        show_students
      when "3"
        exit
      else
        puts "Please try again."
    end
end
# Loops through menu and user selection
def interactive_menu 
  loop do
    print_menu
    process(gets.chomp)
  end
end
# Calls current method
interactive_menu
 

