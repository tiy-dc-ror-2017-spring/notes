require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'
require_relative 'album'

class AlbumTest < Minitest::Test

  def test_album_exists
    assert Album
  end

  def test_album_is_working
    new_album = Album.new("Black Dog","Led Zeppelin", 25, 100)
    assert_equal 25, new_album.price
  end

  def test_sell_a_copy
    new_album = Album.new("Lemonade", "Beyonce", 10.99, 500)
    new_album.sell_a_copy
    assert_equal 499, new_album.quantity
  end

  def test_cant_sell_a_copy_if_there_are_none_to_be_sold
    assert NoInventoryError
    new_album = Album.new("Lemonade", "Beyonce", 10.99, 0)
    # begin
    #   new_album.sell_a_copy
    # rescue NoInventoryError
    #   assert true
    # else
    #   assert false
    # end

    assert_raise(NoInventoryError) do
      new_album.sell_a_copy
    end
    
    assert_equal 0, new_album.quantity
  end
end
