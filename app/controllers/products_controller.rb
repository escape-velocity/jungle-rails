class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = @product.reviews.new
    @review.product_id = @product.id
    @sorted_reviews = @product.reviews.order(created_at: :desc)
  end

end
