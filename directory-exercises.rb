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

# Puts student name start with specific letter
def each(names)
  names.each.with_index do |student, index| 
    if student[:name].start_with? "T"
    puts "#{index+1}. #{student[:name]}: #{student[:cohort].capitalize} cohort"
    end 
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Calling methods
print_header
each(students)
print_footer(students)