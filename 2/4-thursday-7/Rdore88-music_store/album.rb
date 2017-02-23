require_relative 'no_inventory_error'

class Album
  attr_accessor :artist, :price, :quantity
  def initialize(album_name, artist, price, quantity)
    @album = album_name
    @artist = artist
    @price = price
    @quantity = quantity
  end

  ##
  # Reduce quantity by number
  def sell_a_copy(total_sold = 1)
    if quantity > 0
      self.quantity -= total_sold
    else
      raise NoInventoryError
    end
  end

  def more_copies_in_stock(amount_added)
    self.quantity += amount_added
  end
end
