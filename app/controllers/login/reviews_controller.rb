class Login::ReviewsController < Login::ApplicationController
  before_action :set_review, only:[:edit, :update, :destroy]

  def new
    @review = Review.new(@works)
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to works_path(anchor: 'portfolio')
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private

  def review_params
      params[:review].permit(:rate, :comment, work_ids: [], user_ids: [])
  end

  def set_review
      @review = Review.find(params[:id])
  end

end
