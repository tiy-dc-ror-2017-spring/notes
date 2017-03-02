require "bundler/setup"
require "pry"

require "sqlite3"

# Open a database
db = SQLite3::Database.new "new-tables.sqlite3"

# Get a list of everyones first name
sql = "CREATE TABLE 'clients' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  'name' varchar,
  'industry' varchar,
  'created_at' datetime NOT NULL,
  'updated_at' datetime NOT NULL
)
"
db.execute(sql)
