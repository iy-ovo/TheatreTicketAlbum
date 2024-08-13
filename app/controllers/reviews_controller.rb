class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @reviews = Review.new
  end

  def create
    @review = review_params
    if @review.save
      redirect_to reviews_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
