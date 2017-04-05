class CartController < ApplicationController
  def add_product
    Rails.logger.info "Trying to add stuff to cart."

    render json: {message: "Added to cart!", product: Product.first }
  end
end
