 # Instance variable (empty array) which can be used in all methods
@students = []

def print_menu
  puts "What would you like to do? Put a number."
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "5. Exit"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
    # While user input is not empty, loop through this code
  while !name.empty? do
    # Add student name to array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # Get another name from user. If empty, loop breaks
    name = STDIN.gets.chomp
  end
  # Return the array
  @students
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

def save_students
  # Opens file for writing
  file = File.open("students.csv", "w")
  # Iterates through each student in @students array
  @students.each { |student|
  # Creates a separate array with each student and their corresponding cohort
  student_data = [student[:name], student[:cohort]]
  # Creates a string and puts it into the file
  csv_line = student_data.join(", ")
  file.puts csv_line
  }
  file.close
end

def load_students(filename = "students.csv")
  # Opens file for reading
  file = File.open(filename, "r")
  # Iterates through each line of file 
  file.readlines.each { |line|
  name, cohort = line.chomp.split(", ")
  # Adds each line back into array as a hash
    @students << {name: name, cohort: cohort.to_sym}
  }
  file.close
end

def try_load_students
  # First argument from command line
  filename = ARGV.first
  return if filename.nil? 
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end
# Selects a process based on user input
def process(selection)
    case selection
      when "1"
        input_students
      when "2"
        show_students
      when "3"
        save_students
      when "4"
        load_students
      when "5"
        exit
      else
        puts "Please try again."
    end
end
# Loops through menu and user selection
def interactive_menu 
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end


try_load_students
# Calls current method
interactive_menu
 

