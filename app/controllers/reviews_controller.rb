class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
  
    @review = @product.reviews.new(review_params)
    @review.user = current_user


      def user_login 
        redirect_to '/session/new' unless current_user
        end

      if @review.save
        
        redirect_to(@product, {notice: 'Review successfully created'})
      else
        redirect_to(@product, {notice: 'Failed to create review'})
      end
  end

  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
      
      )
  end

end