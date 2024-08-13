class ReviewsController < ApplicationController

  def top; end

  def index
    @reviews = Review.all
  end
end
