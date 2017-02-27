require "pry"
# "Molly\nJames\nRobby\n"
rows = File.read("students.csv").split("\n")
students = rows.map do |row|
  values = row.split(",")
  { name: values[0], count: values[1].to_i }
end

if students.empty?
  loop do
    puts "Enter your student's name!"
    input = gets.chomp
    if input == ""
      break
    else
      students << { name: input, count: 0 }
    end
  end
end

picked_student = students.sample

puts "#{picked_student[:name]} will answer the question now!"
picked_student[:count] += 1

csv_rows = students.map {|el| el.values.join(",")}
File.write("students.csv", csv_rows.join("\n"))
