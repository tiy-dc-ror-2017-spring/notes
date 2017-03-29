# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Station.create(
  name: "International Space Station",
  crew_count: 6,
  peripasis: 70000.53,
  aposis: 10002,
  max_fuel: 1000,
  current_fuel: 54.32,
  country_code: "US"
)

Station.create(
  name: "Tiangong 2",
  crew_count: 2,
  peripasis: 70000.53,
  aposis: 10002,
  max_fuel: 1000,
  current_fuel: 54.32,
  country_code: "US"
)

Station.create(
  name: "Tiangong 1",
  crew_count: 2,
  peripasis: 70000.53,
  aposis: 10002,
  max_fuel: 1000,
  current_fuel: 54.32,
  country_code: "US"
)
