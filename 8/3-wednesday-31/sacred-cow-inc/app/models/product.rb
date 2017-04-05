class Product < ApplicationRecord
  def unit_price
    unit_price_in_cents / 100.0
  end
end
