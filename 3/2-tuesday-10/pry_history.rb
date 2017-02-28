db
ls db
exit!
db.execute
exit
db.execute(sql)
exit!
result
exit
result
exit!
result
exit
result
result.length
sql = "SELECT * FROM people WHERE last_name='Smith'"
result = db.execute(sql)
sql = "SELECT * FROM people WHERE last_name='mith'"
sql = "SELECT * FROM people WHERE last_name='smith'"
result = db.execute(sql)
sql = "SELECT * FROM people WHERE last_name='smith' LIMIT 3"
db.execute "SELECT * FROM people WHERE last_name='Smith' LIMIT 3"
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER first_name LIMIT 3"
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER BY first_name LIMIT 3"
db.execute "SELECT * FROM people WHERE last_name='Smith' LIMIT 3 ORDER BY first_name"
db.execute "SELECT * FROM people WHERE last_name='Smith' LIMIT 3 ORDER BY id"
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER BY id LIMIT id"
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER BY id LIMIT 3"
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER BY id DESC LIMIT 3"
db.execute "SELECT * FROM people WHERE last_name='Smith' ORDER BY id ASC LIMIT 3"
db.execute "SELECT COUNT(*) FROM people WHERE last_name='Smith' ORDER BY id ASC LIMIT 3"
db.execute "SELECT COUNT(last_name) FROM people WHERE last_name='Smith' ORDER BY id ASC LIMIT 3"
db.execute "SELECT COUNT(last_name) FROM people  ORDER BY id ASC LIMIT 3"
db.execute "SELECT COUNT(last_name) FROM people "
db.execute "SELECT last_name FROM people "
db.execute "SELECT COUNT(*) FROM people GROUP BY last_name "
db.execute "SELECT COUNT(*), last_name FROM people GROUP BY last_name "
db.execute "SELECT COUNT(*), last_name, id FROM people GROUP BY last_name "
db.execute "SELECT COUNT(*), last_name FROM people GROUP BY last_name"
db.execute "SELECT * FROM people WHERE first_name='Astrid'"
db.execute "SELECT * FROM phone_numbers WHERE person_id='21'"
db.execute "SELECT * FROM people WHERE first_name='Astrid' JOIN phone_numbers ON people.id = phone_numbers.person_id"
db.execute "SELECT * FROM people WHERE first_name='Astrid' INNER JOIN phone_numbers ON people.id = phone_numbers.person_id"
db.execute "SELECT * FROM people  JOIN phone_numbers ON people.id = phone_numbers.person_id"
db.execute "SELECT * FROM people INNER JOIN phone_numbers ON people.id = phone_numbers.person_id"
db.execute "SELECT * FROM people INNER JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE last_name='Astrid'"
db.execute "SELECT * FROM people INNER JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE first_name='Astrid'"
db.execute "SELECT * FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE first_name='Astrid'"
db.execute "SELECT first_name, last_name, phone_number FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE first_name='Astrid'"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE first_name='Astrid'"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id ORDER BY first_name ASC"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE last_name LIKE 'green'"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE last_name LIKE '%green%'"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE last_name LIKE 'green%'"
db.execute "SELECT first_name, last_name, phone_number, phone_type FROM people JOIN phone_numbers ON people.id = phone_numbers.person_id WHERE last_name LIKE '%green'"
exit
