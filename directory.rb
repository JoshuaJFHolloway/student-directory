@students = [] # an empty array accessible to all methods

def input_students
puts "Please enter the names and the cohorts of the students"
puts "To finish, just hit return twice"

name = gets.strip
puts "Can I have the cohort please"
cohort = gets.strip

  until name.empty? do
  @students << {name: name, cohort: cohort, hobbies: :football, country_of_birth: :uzbekistan, height: :ten}
  if @students.count < 2
    puts "Now we have 1 student"
  elsif puts "Now we have #{@students.count} students"
  end

  name = gets.strip
    if name != ""
    puts "Can I have the cohort please"
    cohort = gets.strip
    end
  end
end

def interactive_menu

  loop do

    print_menu
    process(gets.chomp)
  end
end

def print_menu

  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"

end

def show_students

  print_header
  print_students_list
  print_footer

end

def process(selection)

  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end

def print_header
puts "The students of Villains Academy".center(40)
puts "-------------".center(40)
end

def print_student_list
  @students.to_enum.with_index(1).each do |student, number|
    puts "#{number}. #{student[:name]} (#{student[:cohort]} cohort, likes #{student[:hobbies]}, born in #{student[:country_of_birth]}, #{student[:height]} feet tall)"
  end
end

def print_footer(names)
  puts "-------------".center(40)
  puts "Overall, we have #{names.count} great students".center(40)
end


interactive_menu