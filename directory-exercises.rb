students = 
[ {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: :painting}, 
  {name: "Darth Vader", cohort: :november, hobbies: :coding},
  {name: "Nurse Ratched", cohort: :november, hobbies: :football}, 
  {name: "Michael Corleone", cohort: :november, hobbies: :Fashion},
  {name: "Alex DeLarge", cohort: :november, hobbies: :coding},
  {name: "The Wicked Witched of the West", cohort: :november, hobbies: :languages},
  {name: "Terminator", cohort: :november, hobbies: :languages},
  {name: "Freddy Krueger", cohort: :november, hobbies: :painting},
  {name: "The Joker", cohort: :november, hobbies: :football},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: :coding},
  {name: "Norman Bates", cohort: :november, hobbies: :painting} ]
             
def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

# Rewriting each method using loops
def each(names)
  i = 0
  while i <= 10 do
  puts "#{i+1}. #{names[i][:name].center(20)}: #{names[i][:cohort].center(20)} cohort"
    i += 1 
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students."
  name = gets.chomp
  puts "Please enter the names of the cohort."
  cohort = gets.chomp
  puts "To finish, just hit return twice"
  students = []
    # While user input is not empty, loop through this code
  while !name.empty? do
    # Add student name to array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # Get another name from user
    puts "Please enter the names of the students."
    name = gets.chomp
    puts "Please enter the names of the cohort."
    cohort = gets.chomp
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