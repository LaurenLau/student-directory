students = [ {name: "Dr. Hannibal Lecter", cohort: :november}, 
             {name: "Darth Vader", cohort: :november},
             {name: "Nurse Ratched", cohort: :november}, 
             {name: "Michael Corleone", cohort: :november},
             {name: "Alex DeLarge", cohort: :november},
             {name: "The Wicked Witched of the West", cohort: :november},
             {name: "Terminator", cohort: :november},
             {name: "Freddy Krueger", cohort: :november},
             {name: "The Joker", cohort: :november},
             {name: "Joffrey Baratheon", cohort: :november},
             {name: "Norman Bates", cohort: :november} ]
             
def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

def print(names)
  names.each do |student| 
    puts "#{student[:name]}: #{student[:cohort].capitalize} cohort"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
    # While user input is not empty, loop through this code
  while !name.empty? do
    # Add student name to array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # Get another name from user
    name = gets.chomp
  end
    # Return the array
  students
end
# The array of students now becomes a the input students method
students = input_students
# Calling current method
print_header
print(students)
print_footer(students)