require_relative "album"
# require_relative "Artists"


album_database = {}
loop do
puts "What would you like to do? Please choose new album, sold a copy, added inventory, price, number of albums."
answer = gets.chomp

case answer
  when "new album"
    puts "Whats the album name?"
    name = gets.chomp
    puts "Whose the artist?"
    artist = gets.chomp
    puts "Whats the price?"
    price = gets.chomp.to_i
    puts "How many albums do you have?"
    album_quantity = gets.chomp.to_i
    album_database[name] = Album.new(name, artist, price, album_quantity)
  when "sold a copy"
    puts "What album did you sell?"
    album_sold = gets.chomp
    album_database[album_sold].sell_a_copy
    puts "the database has been updated"
  when "added inventory"
    puts "what album did you add?"
    album_added = gets.chomp
    puts "How many did you add?"
    quantity_added = gets.chomp.to_i
    album_database[album_added].more_copies_in_stock(quantity_added)
    puts "the database has been updated"
  when "price"

  when "number of albums"
    puts "What album would you like to check?"
    album_check = gets.chomp
    puts album_database[album_check].quantity

  end
end
