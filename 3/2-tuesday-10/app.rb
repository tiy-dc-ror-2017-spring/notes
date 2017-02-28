require "bundler/setup"
require "pry"

require "sqlite3"

# Open a database
db = SQLite3::Database.new "contact.sqlite3"

# Get a list of everyones first name
sql = "SELECT * FROM people"
result = db.execute(sql)

# Get a list of everyone with the last name 'Smith'
sql = "SELECT * FROM people WHERE last_name='Smith'"
result = db.execute(sql)

# Get a list of the first three alphabetical people with the last name 'Smith'
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER BY first_name LIMIT 3"

# Get a list of the first three alphabetical people with the last name 'Smith'
db.execute "SELECT * FROM people WHERE last_name='Smith' LIMIT 3 ORDER BY first_name"

# Get a list of the count of each last name
db.execute "SELECT COUNT(*), last_name FROM people GROUP BY last_name"

# Get Astrid's phone number
# SELECT YO ASTRID CAN I GET YO NUMMER
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE first_name='Astrid'"

puts "That's All Folks!"
