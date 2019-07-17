students = [ "Dr. Hannibal Lecter", 
             "Darth Vader",
             "Nurse Ratched", 
             "Michael Corleone",
             "Alex DeLarge",
             "The Wicked Witched of the West",
             "Terminator",
             "Freddy Krueger",
             "The Joker",
             "Joffrey Baratheon",
             "Norman Bates" ]


#Using methods to improve the code

def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

def print(names)
  names.each do |students|
    puts students
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)