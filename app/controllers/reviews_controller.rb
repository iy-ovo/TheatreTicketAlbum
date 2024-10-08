class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(created_at: :desc)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path, success: "投稿が完了しました"
    else
        flash.now[:danger] = "投稿に失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    review = Review.find_by(id: params[:id])
    review.destroy!
    redirect_to reviews_path, success: "削除しました", status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:title, :review_content, :review_image, :review_image_cache)
  end
end
